/*
File:    03_build_minimum_wage_simulation_inputs.sas
Purpose: Reconstruct historical RTT aid characteristics and build annual inputs used for minimum-wage labor-cost simulations.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root keep_intermediate;
%macro _mwoc0026;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0026;
%_mwoc0026;
%macro _mwoc0027;
%if %superq(keep_intermediate)= %then %let keep_intermediate=%sysget(KEEP_INTERMEDIATE);
%mend _mwoc0027;
%_mwoc0027;
%macro _mwoc0028;
%if %superq(keep_intermediate)= %then %let keep_intermediate=0;
%mend _mwoc0028;
%_mwoc0028;
%macro _mwoc0030;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0030;
%_mwoc0030;

libname in1  "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
libname in2  "&root\output\generated\Output_data\For_1_SAS_DADS\GMR";
libname out1 "&root\output\generated\Output_data\For_1_SAS_DADS\SIMUL";

/* Stack the compact establishment-year statistics. AN and SIREN_TP are
   deterministic from the annual member name and SIRET, so they are rebuilt
   here instead of being stored in all fourteen RTTSTATS files. */
%macro _mw_stack_stats;
data _all_stats;
    set
    %do annee=1995 %to 2008;
        in1.rttstats&annee.(in=_y&annee.)
    %end;
    ;
    length siren_tp $9;
    siren_tp=substr(siret,1,9);
    %do annee=1995 %to 2008;
        if _y&annee. then an=&annee.;
    %end;
    drop _y:;
run;
%mend _mw_stack_stats;
%_mw_stack_stats;

/* Earliest observed DADS year by firm. This is the historical MIN_AN used for
   aid characteristics; it is attached only to firms in the RTT file. */
proc sort data=_all_stats(keep=siren_tp an) out=AGE nodupkey;
    by siren_tp an;
run;
proc means data=AGE noprint;
    by siren_tp;
    var an;
    output out=AGE(drop=_type_ _freq_) min=MIN_AN;
run;

/* Recreate the firm-specific aid date used by cout_du_travail_CL_v2b.sas.
   Historical q.rtt distinguishes the subsidy date from the RTT/GMR date: for
   typeacc=9, the aid date is missing even though annee_rtt/mois_rtt are defined. */
data rtt;
    set in2.gmr(keep=siret typeacc annee_rtt mois_rtt);
    if typeacc=9 then do;
        annee_aide=.;
        mois_aide=.;
    end;
    else do;
        annee_aide=annee_rtt;
        mois_aide=mois_rtt;
    end;
    annee_l=annee_aide-1;
    annee_p=annee_aide+1;
    keep siret typeacc annee_aide mois_aide annee_l annee_p;
run;
proc sort data=rtt nodupkey; by siret; run;

/* Pre-aid MDO and working time. */
data _tp_l;
    set _all_stats(keep=siret an mdo r_rtt);
    annee_l=an;
    r_rtt_l=r_rtt;
    keep siret annee_l mdo r_rtt_l;
run;
proc sort data=rtt; by siret annee_l; run;
proc sort data=_tp_l; by siret annee_l; run;
data rtt;
    merge rtt(in=a) _tp_l;
    by siret annee_l;
    if a;
run;

/* Post-aid working time. */
data _tp_p;
    set _all_stats(keep=siret an r_rtt);
    annee_p=an;
    r_rtt_p=r_rtt;
    keep siret annee_p r_rtt_p;
run;
proc sort data=rtt; by siret annee_p; run;
proc sort data=_tp_p; by siret annee_p; run;
data rtt;
    merge rtt(in=a) _tp_p;
    by siret annee_p;
    if a;
run;

/* Aid-year fallbacks and firm EQTP in the aid year. */
data _tp_aide;
    set _all_stats(keep=siret an mdo r_rtt e_eqtp_ent);
    annee_aide=an;
    mdo_=mdo;
    r_rtt_l_=r_rtt;
    e_eqtp_AAide=e_eqtp_ent;
    keep siret annee_aide mdo_ r_rtt_l_ e_eqtp_AAide;
run;
proc sort data=rtt; by siret annee_aide; run;
proc sort data=_tp_aide; by siret annee_aide; run;
data rtt;
    merge rtt(in=a) _tp_aide;
    by siret annee_aide;
    if a;
    if r_rtt_l=. then r_rtt_l=r_rtt_l_;
    if mdo=. then mdo=mdo_;
    length siren_tp $9;
    siren_tp=substr(siret,1,9);
    drop r_rtt_l_ mdo_;
run;

/* Historical MIN_AN is attached to RTT firms once, before annual SIMUL files. */
proc sort data=rtt; by siren_tp; run;
proc sort data=AGE; by siren_tp; run;
data rtt_v2;
    merge rtt(in=a) AGE;
    by siren_tp;
    if a;
    mrtt=(log(r_rtt_l)-log(r_rtt_p)) >= 0.15;
    keep siret typeacc mdo mrtt e_eqtp_AAide MIN_AN;
run;
proc sort data=rtt_v2 nodupkey; by siret; run;

/* GMR/date information is constant across simulation years. Merge it with the
   reconstructed aid characteristics once rather than once per annual file. */
data gmr;
    set in2.gmr(keep=siret GMR annee_rtt mois_rtt);
run;
proc sort data=gmr nodupkey; by siret; run;
proc sort data=rtt_v2; by siret; run;
data _rtt_gmr;
    merge rtt_v2(in=a) gmr;
    by siret;
    if a;
run;

/* Build one compact SIMUL_MW file per year. AN is implied by the member name
   and is restored by macro_build_firm_rtt_history.sas when each file is read. */
%macro simul(annee);
data t&annee.;
    set in1.rttstats&annee.(keep=siret apet e_eqtp_ent);
run;
proc sort data=t&annee.; by siret; run;
data out1.SIMUL_MW_&annee.;
    merge t&annee.(in=a) _rtt_gmr;
    by siret;
    if a;
    if mdo=. then mdo=0;
    if mrtt=. then mrtt=0;
    if GMR=. then GMR=6;
    if annee_rtt=. then mois_rtt=6;
    if annee_rtt=. then annee_rtt=2008;
    keep siret typeacc apet e_eqtp_ent mdo mrtt e_eqtp_AAide MIN_AN GMR annee_rtt mois_rtt;
run;
proc datasets library=work nolist; delete t&annee.; quit;
%mend simul;

%macro _mwoc0032;
%do annee=1995 %to 2008;
    %simul(&annee.);
%end;
%mend _mwoc0032;
%_mwoc0032;

proc datasets library=work nolist;
    delete AGE rtt rtt_v2 gmr _rtt_gmr _all_stats _tp_l _tp_p _tp_aide;
quit;

/* Compact RTT statistics and GMR inputs have reached their last retained use. */
%macro _mwoc0033;
%if %superq(keep_intermediate) ne 1 %then %do;
proc datasets library=in1 nolist;
    delete %do annee=1995 %to 2008; rttstats&annee. %end;;
quit;
proc datasets library=in2 kill nolist; quit;
%end;
%mend _mwoc0033;
%_mwoc0033;
