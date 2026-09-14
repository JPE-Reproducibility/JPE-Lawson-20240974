/*
File:    macro_build_firm_organization_data.sas
Purpose: Build annual firm hierarchy measures and export the firm-level DADS datasets consumed by Stata.
Notes:   The implementation is resource-optimized but preserves the retained scientific definitions.
         It reads only needed DADS columns, avoids repeated full-width DATA copies, combines firm-level
         sums that use the same BY order, and omits intermediate measures that have no downstream consumer.
*/

%macro dadsclean_postes(year);

/* ------------------------------------------------------------------------- */
/* 1. Read the annual DADS file once and materialize only three narrow views. */
/*    _agri keeps the two exclusion counts before the production-layer filter. */
/*    _firm_info_source feeds modal APET/ZE1990 construction without rereading */
/*    the full annual DADS file. dataA is the job sample used for organizations. */
/* ------------------------------------------------------------------------- */
data _agri(keep=siren DD EE)
     _firm_info_source(keep=siren apet nbheur dept comt)
     dataA(drop=DD EE);
%if %eval(&year.) < 2002 %then %do;
    set a.t&year.(
        keep=age catjur apet filt domempl duree cs nbheur cpfd cpfd_1 s_brut s_net
             siren siret datdeb datfin dept comt cda an e_eqtp_ent
        rename=(siren=_siren_input)
    );
    length siren $9;
    siren = substr(siret,1,9);
    drop _siren_input;
%end;
%if %eval(&year.) >= 2002 %then %do;
    set a.t&year.(
        keep=age catjur apet filt domempl duree cs nbheur cpfd cpfd_1 s_brut s_net
             siren siret datdeb datfin dept comt cda typ_emploi an e_eqtp_ent
    );
%end;

    if filt eq '1';
    if missing(cs) ne 1;
    if age >= 16;
    if age <= 65;
    if domempl in ('2','9');
    if substr(catjur,1,1) = '5';
    if cpfd in ('P','C');
    if s_net < s_brut;
    if missing(s_brut) eq 0;
%if %eval(&year.) < 2002 %then %do;
    if cda not in ('A');
    if cs not in ('71','72','73','74','75','76','79');
%end;
%if %eval(&year.) >= 2002 %then %do;
    if cda not in ('A');
    if typ_emploi in ('O');
%end;

    DD = (substr(cs,1,1) = '0');
    EE = (substr(cs,1,1) = '1');
    output _agri;

    if missing(nbheur) eq 0 and nbheur > 0 then output _firm_info_source;
    if substr(cs,1,1) in ('2','3','4','5','6') and missing(nbheur) eq 0 and nbheur > 0 then output dataA;
run;

/* Submitted exclusion counts: same population, same SIREN order, same SUM statistic. */
proc sort data=_agri; by siren; run;
proc means data=_agri noprint;
    by siren;
    var DD EE;
    output out=agricultural_workers(drop=_type_ _freq_)
           sum=totpostes0 totpostes1;
run;
proc datasets library=work nolist; delete _agri; quit;

/* ------------------------------------------------------------------------- */
/* 2. Attach the selected RTT/GMR history and reconstruct job-level labor cost. */
/* ------------------------------------------------------------------------- */
data gmrsiren;
    set outp.firm_rtt&year.;
    keep siren GMR GMR1 GMR2 GMR3 GMR4 GMR5 GMR6 MAX_H MIN_AN MIN_WAGE MIN_WAGE_H
         annee_aide annee_rtt mois_aide mois_rtt smic_brut gmr1_brut gmr2_brut
         gmr3_brut gmr4_brut gmr5_brut s_supbrut_mw s_supbrut_mwh s_supbrut_mwm
         typeacc e_eqtp_AAide e_eqtp_ent mdo mrtt apet siret large_f;
run;
data gmrsiren;
    set gmrsiren;
    rename apet=apet_acc siret=siret_acc;
run;
proc sort data=gmrsiren; by siren; run;
proc sort data=dataA; by siren; run;
data dataA;
    merge dataA(in=_dads) gmrsiren;
    by siren;
    if _dads;
run;

/* Put the agreement-industry code in APET while the submitted tax macros run. */
data t&year.;
    set dataA;
    if typeacc = 100 then typeacc = .;
    if MIN_AN  = 100 then MIN_AN  = .;
    apet_year = apet;
    apet = apet_acc;
run;
%calcot(&year.);
%rist(&year.);

/* Keep only variables that can reach a retained firm-level output. */
data dataA(
    keep=siren domempl apet siret_acc annee_rtt mois_rtt GMR GMR1 GMR2 GMR3 GMR4 GMR5 GMR6
         typeacc s_supbrut_mwh MIN_WAGE MIN_WAGE_H s_net s_brut nbheur s_supbrut cs dept large_f
         E cs1 hrs_below_mw2006 _postesout
);
    set t&year.;
    cspa_net  = max(cspa-exo_a,0);
    s_supbrut = s_brut+cspa_net;
    if missing(typeacc) eq 1 then typeacc=100;
    apet = apet_year;

    E = 1;
    length cs1 $1;
    cs1 = substr(cs,1,1);
    if cs1 = '6' then cs1 = '5';

    /* Only the hours-based exposure measure is consumed downstream. */
    hrs_below_mw2006 = 0;
    if GMR ne 6 and sbh <= 8.15 then hrs_below_mw2006 = nbheur;
    if GMR eq 6 and large_f = 0 and sbh <= 8.24 then hrs_below_mw2006 = nbheur;
    if GMR eq 6 and large_f = 1 and sbh <= 8.36 then hrs_below_mw2006 = nbheur;

    _postesout = 0;
    if substr(dept,1,2) in ('97','98','99') then _postesout = 1;
    if substr(dept,1,2) in ('9A','9B','9C','9D','2A','2B') then _postesout = 1;
run;
proc datasets library=work nolist; delete t&year. gmrsiren; quit;

/* Re-establish the submitted within-SIREN order once. All firm sums below use it. */
proc sort data=dataA; by siren; run;

/* One policy row per firm, exactly as in the submitted first.SIREN selection. */
data dataB;
    set dataA(
        keep=siren domempl apet siret_acc annee_rtt mois_rtt GMR GMR1 GMR2 GMR3 GMR4 GMR5 GMR6
             typeacc s_supbrut_mwh MIN_WAGE MIN_WAGE_H
    );
    by siren;
    if first.siren;
run;

/* Overall firm totals, exposure hours, and overseas-job count share the same BY order. */
proc means data=dataA noprint;
    by siren;
    var E nbheur s_net s_brut s_supbrut hrs_below_mw2006 _postesout;
    output out=firm_totals(drop=_type_ _freq_)
           sum=totpostes tothrs totsnet totsbrut totssupbrut hrs_below_mw2006 totpostesout;
run;

/* ------------------------------------------------------------------------- */
/* 3. Layer totals. Only jobs, hours, and total labor cost are used downstream. */
/*    Keep the submitted SIREN x CS1 sort so floating-point sums use the same */
/*    observation order as before.                                            */
/* ------------------------------------------------------------------------- */
proc sort data=dataA(keep=siren cs1 E nbheur s_supbrut) out=_layer_base;
    by siren cs1;
run;
proc means data=_layer_base noprint;
    by siren cs1;
    var E nbheur s_supbrut;
    output out=tpostescs1(drop=_type_ _freq_)
           sum=totpostescs1 tothrscs1 totssupbrutcs1;
run;

/* Split the already aggregated layer table without four additional sorts. */
data
    c2(keep=siren totpostescs1 tothrscs1 totssupbrutcs1
       rename=(totpostescs1=totpostescs12 tothrscs1=tothrscs12 totssupbrutcs1=totssupbrutcs12))
    c3(keep=siren totpostescs1 tothrscs1 totssupbrutcs1
       rename=(totpostescs1=totpostescs13 tothrscs1=tothrscs13 totssupbrutcs1=totssupbrutcs13))
    c4(keep=siren totpostescs1 tothrscs1 totssupbrutcs1
       rename=(totpostescs1=totpostescs14 tothrscs1=tothrscs14 totssupbrutcs1=totssupbrutcs14))
    c5(keep=siren totpostescs1 tothrscs1 totssupbrutcs1
       rename=(totpostescs1=totpostescs15 tothrscs1=tothrscs15 totssupbrutcs1=totssupbrutcs15))
    totallayers(keep=siren totlyr layerlenient);
    set tpostescs1;
    by siren;
    retain totlyr;
    if first.siren then totlyr=0;

    select(cs1);
        when('2') do; totlyr+1000; output c2; end;
        when('3') do; totlyr+100;  output c3; end;
        when('4') do; totlyr+10;   output c4; end;
        when('5') do; totlyr+1;    output c5; end;
        otherwise;
    end;

    if last.siren then do;
        layerlenient=30;
        if totlyr=1111 then layerlenient=3;
        if totlyr in (111,1011,1101,1110) then layerlenient=2;
        if totlyr in (1001,1010,1100,101,110,11) then layerlenient=1;
        if totlyr in (1,10,100,1000) then layerlenient=0;
        output totallayers;
    end;
run;

/* Modal APET and ZE1990 on the same filtered population used by the old helper. */
%firm_info_max(&year., source=_firm_info_source);

/* All firm-level components are sorted by SIREN; merge them once. */
data dataB;
    merge dataB(in=_main)
          firm_info_max&year.(drop=year)
          agricultural_workers
          firm_totals
          c2 c3 c4 c5
          totallayers;
    by siren;
    if _main;
    if siren ne '';
    year=&year.;
    if missing(domempl) ne 1;
run;

proc datasets library=work nolist;
    delete dataA _firm_info_source _layer_base tpostescs1
           c2 c3 c4 c5 totallayers firm_totals agricultural_workers firm_info_max&year.;
quit;

/* Remove inherited labels/formats so the Stata export is stable across SAS installations. */
proc datasets lib=work memtype=data;
    modify dataB;
    attrib _all_ label='';
    attrib _all_ format=;
run;

proc export data=dataB
    outfile="&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02&year..dta"
    dbms=DTA label replace;
run;

proc datasets library=work nolist; delete dataB gmr; quit;
%mend;
