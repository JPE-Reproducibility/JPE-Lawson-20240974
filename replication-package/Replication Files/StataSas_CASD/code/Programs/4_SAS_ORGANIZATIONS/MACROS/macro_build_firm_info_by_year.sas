/*
File:    macro_build_firm_info_by_year.sas
Purpose: Build the annual modal industry and commuting-zone identifiers used by the firm panel.
Notes:   The optional SOURCE= dataset can be a prefiltered DADS job file. This avoids rereading
         the full annual DADS table when called from dadsclean_postes(). Tie handling is kept
         identical to the submitted stable-sort logic: among equally frequent categories, the
         first category in ascending character order is retained.
*/

%macro firm_info_max(year1, source=);

/* Build the same worker population as the submitted program. */
%if %length(%superq(source)) = 0 %then %do;
data _fim_base;
    set a.t&year1.;
    year = &year1.;
    if filt eq '1';
    if missing(cs) ne 1;
    if age >= 16;
    if age <= 65;
    if domempl in ('2' '9');
    if substr(catjur,1,1) = '5';
    if cpfd in ('P' 'C');
    if s_net < s_brut;
    if missing(s_brut) eq 0;
    if missing(nbheur) eq 0;
    if nbheur > 0;
run;
%if %eval(&year1.) < 2002 %then %do;
data _fim_base;
    set _fim_base;
    if cda not in ('A');
    if cs not in ('71','72','73','74','75','76','79');
run;
%end;
%if %eval(&year1.) >= 2002 %then %do;
data _fim_base;
    set _fim_base;
    if cda not in ('A');
    if typ_emploi in ('O');
run;
%end;
%end;
%else %do;
data _fim_base;
    set &source.;
    year = &year1.;
    if missing(nbheur) eq 0;
    if nbheur > 0;
run;
%end;

/* Modal APET: count directly at siren x APET instead of merging counts back to every job. */
data _fim_apet;
    set _fim_base(keep=siren apet);
    E=1;
run;
proc sort data=_fim_apet;
    by siren apet;
run;
proc means data=_fim_apet noprint;
    by siren apet;
    var E;
    output out=_fim_apet_counts(drop=_type_ _freq_) sum=totpostes_apet;
run;
proc means data=_fim_apet_counts noprint;
    by siren;
    var totpostes_apet;
    output out=_fim_apet_max(drop=_type_ _freq_) max=max_totpostes_apet;
run;
data _fim_apet_ties;
    merge _fim_apet_counts _fim_apet_max;
    by siren;
    if totpostes_apet = max_totpostes_apet;
run;
data max_apet_&year1.;
    set _fim_apet_ties;
    by siren;
    if first.siren;
    year = &year1.;
    max_apet = apet;
    keep siren year max_apet;
run;

/* Commuting-zone mapping on the same worker population. */
data _fim_geo;
    set _fim_base(keep=siren dept comt);
    length codegeo $5;
%if %eval(&year1.) < 2002 %then %do;
    codegeo = dept!!comt;
%end;
%if %eval(&year1.) >= 2002 %then %do;
    codegeo = comt;
%end;
run;
proc sort data=_fim_geo;
    by codegeo;
run;
data _fim_geo;
    merge _fim_geo(in=_dads) _zone_crosswalk;
    by codegeo;
    if _dads;
    if missing(siren) ne 1;
    if codegeo in ('75101','75102','75103','75104','75105','75106','75107','75108','75109','75110',
                   '75111','75112','75113','75114','75115','75116','75117','75118','75119','75120') then ze1990 = '1131';
    if codegeo in ('13201','13202','13203','13204','13205','13206','13207','13208','13209','13210',
                   '13211','13212','13213','13214','13215','13216') then ze1990 = '9349';
    if codegeo in ('69381','69382','69383','69384','69385','69386','69387','69388','69389') then ze1990 = '8211';
run;

/* Modal ZE1990, with the same stable tie rule as above. */
data _fim_ze;
    set _fim_geo(keep=siren ze1990);
    E=1;
run;
proc sort data=_fim_ze;
    by siren ze1990;
run;
proc means data=_fim_ze noprint;
    by siren ze1990;
    var E;
    output out=_fim_ze_counts(drop=_type_ _freq_) sum=totpostes_ze1990;
run;
proc means data=_fim_ze_counts noprint;
    by siren;
    var totpostes_ze1990;
    output out=_fim_ze_max(drop=_type_ _freq_) max=max_totpostes_ze1990;
run;
data _fim_ze_ties;
    merge _fim_ze_counts _fim_ze_max;
    by siren;
    if totpostes_ze1990 = max_totpostes_ze1990;
run;
data max_ze1990_&year1.;
    set _fim_ze_ties;
    by siren;
    if first.siren;
    max_ze1990 = ze1990;
    keep siren max_ze1990;
run;

/* Both component datasets are already ordered by SIREN. */
data firm_info_max&year1.;
    merge max_apet_&year1. max_ze1990_&year1.;
    by siren;
%if %eval(&year1.) < 2002 %then %do;
    siren = substr(siren,1,9);
%end;
run;

proc datasets library=work nolist;
    delete _fim_base _fim_apet _fim_apet_counts _fim_apet_max _fim_apet_ties
           _fim_geo _fim_ze _fim_ze_counts _fim_ze_max _fim_ze_ties
           max_apet_&year1. max_ze1990_&year1.;
quit;
%mend;
