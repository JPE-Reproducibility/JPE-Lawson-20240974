/*
File:    macros_dads_job_extraction.sas
Purpose: Define reusable SAS macros for regional DADS/BTS Postes extraction and harmonization.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%macro count_item_list(list);
%global cntitem;
%let _i = 1;
%do %while (%scan(&list.,&_i.) ne );
    %let _i = %eval(&_i. + 1);
%end;
%let cntitem = %eval(&_i. - 1);
%mend count_item_list;

/* Read only variables used by the retained extraction, EQTP construction, or
   downstream organization programs. REGT is retained only long enough to apply
   the historical regional selection and is dropped before the annual stack. */
%macro selec_var_old_2001;
(keep = age catjur apet filt domempl duree cs2 nbheur cipdz cipdz_1 brutcp brut netnet siren nic
        debremu finremu reg dep com nes16 apet cda
 rename =
(cipdz = cpfd cipdz_1 = cpfd_1 brut = s_brut netnet = s_net debremu = datdeb finremu = datfin reg = regt dep = dept com = comt
 cs2 = cs nes16 = a17)
)
%mend selec_var_old_2001;

%macro selec_var_new(annee=);
(keep = age catjur apet filt domempl duree cs nbheur cpfd cpfd_1 s_brut s_net siren nic
        datdeb datfin regt dept comt apet cda typ_emploi
%if %eval(&annee.) < 2008 %then %do; nes16 rename = (nes16 = a17) %end;
%if %eval(&annee.) >= 2008 %then %do; a17 %end;
)
%mend selec_var_new;

%macro selec_data(annee=);
%if %eval(&annee.) < 2002 %then %do;
s_brut = s_brut + brutcp;
drop brutcp;
%end;
%if %eval(&annee.) < 2000 %then %do;
s_brut = s_brut / 6.55957;
s_net = s_net / 6.55957;
%end;
cs = substr(cs,1,2);
if REGT = "" then delete;
%if %eval(&annee.) < 2002 %then %do;
if substr(siren,1,1) = "9" or substr(nic,1,1) = "9" then delete;
siren = substr(siren,2,9);
nic = substr(nic,2,5);
%end;
%if %eval(&annee.) >= 2002 %then %do;
if substr(siren,1,1) = "F" or substr(nic,1,1) = "F" then delete;
siren = substr(siren,1,9);
nic = substr(nic,1,5);
%end;
if filt in ('1','2')
   & cpfd not in ('Z','D')
   & duree > 0
   & nbheur >= 0
   & s_brut > 0
   & s_net > 0
%if &reg. = 97 %then %do; & REGT in ("01","02","03","04","97") %end;
%else %do; & REGT = "&reg." %end;
then output;
%mend selec_data;

%macro reg(reg=,an=);
data t_&an._&reg.;
    set REG&an..POST&reg.%substr(&an.,3,2)
    %if %eval(&an.) < 2002 %then %do; %selec_var_old_2001 %end;
    %else %if %eval(&an.) >= 2002 %then %do; %selec_var_new(annee=&an.) %end;
    ;
    %selec_data(annee=&an.);
run;
%mend reg;

/* Apply the row-wise cleanup that historically followed the regional stack. */
%macro finalize_region(annee=,reg=);
data t_&annee._&reg.;
    set t_&annee._&reg.;
    if substr(siren,1,1) = "F" or substr(nic,1,1) = "F" then delete;
    if substr(siren,1,1) = "P" or substr(nic,1,1) = "P" then delete;
    if siren in (' ','') then delete;
    siret = compress(siren!!nic);
    if datfin in (.,999) then do;
        if (datdeb ne . and datdeb < 360) then datfin = duree + datdeb - 1;
        else datfin = duree;
    end;
    if datdeb in (.,999) then do;
        if (datfin ne . and datfin > 400) then datdeb = datfin - duree + 1;
        else datdeb = 1;
    end;
    drop nic regt;
run;
%mend finalize_region;

/* Resource-efficient regional assembly. Regions are appended in exactly the
   same order as the historical SET statement, but each regional work table is
   deleted before the next region is read. */
%macro regions_append(annee);
proc datasets library=out1 nolist; delete t&annee.; quit;
%do j = 1 %to %eval(&&cntitem_reg_&annee.);
    %let varreg = %scan(&&region_&annee., &j.);
    %reg(reg=&varreg.,an=&annee.);
    %finalize_region(annee=&annee.,reg=&varreg.);
    proc append base=out1.t&annee. data=t_&annee._&varreg. force; run;
    proc datasets library=work nolist; delete t_&annee._&varreg.; quit;
%end;
%mend regions_append;

%macro eqtp(annee);
proc sort data=out1.t&annee.; by cs a17; run;
proc summary data=out1.t&annee.(where=(cpfd="C" & duree>=360 & nbheur>0));
    var nbheur;
    by cs a17;
    output out=eqtp&annee.(rename=(nbheur=nbheur_med)) median=;
run;
proc sort data=eqtp&annee.; by cs a17; run;
data t&annee.(drop=_type_ _freq_);
    merge out1.t&annee. eqtp&annee.;
    by cs a17;
    if a17 in ('00',' ','') then nbheur_med=.;
run;
proc summary data=out1.t&annee.(where=(cpfd="C" & duree>=360 & nbheur>0));
    var nbheur;
    by cs;
    output out=eqtp&annee.(rename=(nbheur=nbheur_medCS)) median=;
run;
proc sort data=eqtp&annee.; by cs; run;
data t&annee.(drop=_type_ _freq_);
    merge out1.t&annee. eqtp&annee.;
    by cs;
    if a17 in ('00',' ','') then nbheur_med=nbheur_medCS;
    drop nbheur_medCS;
run;
data t&annee.;
    set t&annee.;
    if cpfd="C" then e_eqtp=min(1,duree/360);
    else if nbheur=0 then e_eqtp=min(1,duree/360);
    else e_eqtp=max(0,min(1,nbheur/nbheur_med));
run;
proc sort data=t&annee.; by siren; run;
proc means data=t&annee. noprint;
    var e_eqtp;
    by siren;
    output out=tp(drop=_type_ _freq_) sum=e_eqtp_ent;
run;
data t&annee.;
    merge t&annee. tp;
    by siren;
    an=&annee.;
run;
%mend eqtp;

/* Build one compact row per SIRET-year.  The same SIRET sort and PROC MEANS
   sums as in the historical reconstruction are used; only the two resulting
   quantities MDO and R_RTT are persisted rather than their five component sums. */
%macro build_rtt_stats(annee);
data _smic_year;
    set q.txcot2(keep=an smic_m);
    if an=&annee.;
    keep smic_m;
run;

data _rtt_jobs;
    if _n_=1 then set _smic_year;
    set t&annee.(keep=siret cs s_brut duree nbheur cpfd e_eqtp);
    sbrutm=(s_brut/duree)*30;
    D_hours=(cpfd='C')*nbheur;
    D_head=(cpfd='C');
    D_wage=(sbrutm <= 1.5*smic_m)*e_eqtp;
    D_ouvriers=(substr(cs,1,1)='6')*e_eqtp;
    keep siret D_hours D_head D_wage D_ouvriers e_eqtp;
run;
proc sort data=_rtt_jobs; by siret; run;
proc means data=_rtt_jobs noprint;
    by siret;
    var D_hours D_head D_wage D_ouvriers e_eqtp;
    output out=_rtt_stats(drop=_type_ _freq_ rename=(e_eqtp=sum_e_eqtp)) sum=;
run;
data _rtt_stats;
    set _rtt_stats;
    mdo=(D_ouvriers/sum_e_eqtp >= 0.6)*(D_wage/sum_e_eqtp >= 0.7);
    if D_head>0 then r_rtt=D_hours/D_head;
    keep siret mdo r_rtt;
run;

/* Reproduce the APET/e_eqtp_ent row selected by the historical two NODUPKEY
   sorts: after RTT characteristics (constant within SIRET), the smallest APET
   and then e_eqtp_ent are retained. */
data _siret_meta;
    set t&annee.(keep=siret apet e_eqtp_ent);
run;
proc sort data=_siret_meta nodupkey; by siret apet e_eqtp_ent; run;
data _siret_meta;
    set _siret_meta;
    by siret;
    if first.siret;
run;

proc sort data=_rtt_stats; by siret; run;
proc sort data=_siret_meta; by siret; run;
data out1.rttstats&annee.;
    merge _siret_meta(in=a) _rtt_stats;
    by siret;
    if a;
    keep siret apet e_eqtp_ent mdo r_rtt;
run;

proc datasets library=work nolist;
    delete _smic_year _rtt_jobs _rtt_stats _siret_meta eqtp&annee. tp;
quit;
%mend build_rtt_stats;
