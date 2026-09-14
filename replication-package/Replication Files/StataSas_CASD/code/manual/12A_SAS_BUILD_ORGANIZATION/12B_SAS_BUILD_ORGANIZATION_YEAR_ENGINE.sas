/*
Low-resource annual engine for manual stage 12.
Do not normally edit or run this file directly.
Run one of 12B_1996.sas through 12B_2008.sas instead.
The engine calls the same resource-optimized dadsclean_postes(year) macro used by standard Step 12.
*/

%global root casd_data_root keep_intermediate organization_year;
%macro _mw_lr_year_init;
    %if %length(%superq(root))=0 %then %let root=%sysget(REPLICATION_ROOT);
    %if %length(%superq(casd_data_root))=0 %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
    %if %length(%superq(root))=0 %then %do;
        %put ERROR: Set ROOT before running a low-resource annual SAS file.;
        %abort cancel;
    %end;
    %if %length(%superq(casd_data_root))=0 %then %do;
        %put ERROR: Set CASD_DATA_ROOT before running a low-resource annual SAS file.;
        %abort cancel;
    %end;
    %if %length(%superq(organization_year))=0 %then %do;
        %put ERROR: ORGANIZATION_YEAR is not set.;
        %abort cancel;
    %end;
    %if &organization_year < 1996 or &organization_year > 2008 %then %do;
        %put ERROR: ORGANIZATION_YEAR must be between 1996 and 2008.;
        %abort cancel;
    %end;
%mend _mw_lr_year_init;
%_mw_lr_year_init;
%sysmacdelete _mw_lr_year_init / nowarn;

/* KEEP_INTERMEDIATE is a plain 0/1 control value.  Do not save it with
   %SUPERQ: repeated 12B runs in one SAS session would otherwise accumulate
   macro-quoting levels. */
%let _mw_keep_saved=&keep_intermediate;
%let keep_intermediate=0;
options nomprint nomlogic nosymbolgen;

/* Start each year with an empty WORK library to cap transient disk/memory use. */
proc datasets library=work kill nolist; quit;

libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";

%macro _mw_lr_check_inputs;
    %if not %sysfunc(exist(a.t&organization_year)) %then %do;
        %put ERROR: Missing a.t&organization_year. Rerun the earlier DADS extraction stage if needed.;
        %abort cancel;
    %end;
    %if not %sysfunc(exist(outp.firm_rtt&organization_year)) %then %do;
        %put ERROR: Missing outp.firm_rtt&organization_year. Run low-resource phase 12A first.;
        %abort cancel;
    %end;
%mend _mw_lr_check_inputs;
%_mw_lr_check_inputs;
%sysmacdelete _mw_lr_check_inputs / nowarn;

%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_compute_labor_costs.sas";
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_info_by_year.sas";
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_organization_data.sas";

/* Only the commuting-zone lookup needed by firm_info_max is loaded for this year. */
proc import out=work._zone_crosswalk
    datafile="&root\data\public\original\For_4_SAS_ORGANIZATIONS\zones_emploi_adjusted.xls"
    dbms=excel replace;
    range="communes$";
    getnames=yes;
    mixed=no;
    scantext=yes;
    usedate=yes;
    scantime=yes;
run;
data _zone_crosswalk;
    set _zone_crosswalk(keep=codgeo ze1990);
    length codegeo $ 5;
    codegeo=substr(codgeo,1,5);
    drop codgeo;
run;
proc sort data=_zone_crosswalk; by codegeo; run;

%let _mw_start=%sysfunc(datetime());
proc printto log="&root\output\logs\LogNoApprentis_LP02_&organization_year..txt" new; run;
%dadsclean_postes(&organization_year.);
proc printto; run;
%let _mw_end=%sysfunc(datetime());
%let _mw_syscc=&syscc;

/* Delete last-use inputs only if this year's output completed successfully. */
%macro _mw_lr_year_cleanup;
    %if &_mw_syscc <= 4 %then %do;
        proc datasets library=outp nolist; delete firm_rtt&organization_year.; quit;
        %if (&organization_year ne 2002) and (&organization_year ne 2006) %then %do;
            proc datasets library=a nolist; delete t&organization_year.; quit;
        %end;
        proc datasets library=work kill nolist; quit;
    %end;
    %else %put ERROR: Year &organization_year failed. Annual inputs were retained for diagnosis/rerun.;
%mend _mw_lr_year_cleanup;
%_mw_lr_year_cleanup;
%sysmacdelete _mw_lr_year_cleanup / nowarn;

%let _mw_elapsed=%sysevalf(&_mw_end - &_mw_start);
filename mwtim "&root\output\logs\timings\12B_SAS_BUILD_ORGANIZATION_&organization_year..txt";
data _null_;
    file mwtim lrecl=32767;
    start=&_mw_start;
    finish=&_mw_end;
    elapsed=&_mw_elapsed;
    put "stage=12B - low-resource annual organization build";
    put "software=SAS";
    put "year=&organization_year";
    put "start=" start datetime19.;
    put "end=" finish datetime19.;
    put "elapsed_seconds=" elapsed 18.3;
    put "sas_syscc=&_mw_syscc";
run;
filename mwtim clear;

%let keep_intermediate=&_mw_keep_saved;

/* Each annual wrapper reloads these macros.  Remove their compiled versions
   and temporary macro variables so 1996-2008 can run in one SAS session. */
%symdel _mw_keep_saved _mw_start _mw_end _mw_syscc _mw_elapsed / nowarn;
%sysmacdelete calcot rist firm_info_max dadsclean_postes / nowarn;
libname q clear;
libname a clear;
libname outp clear;

%put NOTE: LOW-RESOURCE STAGE 12B COMPLETED FOR YEAR &organization_year.;
%put NOTE: You may close SAS now. After reopening SAS, reset ROOT and CASD_DATA_ROOT before the next 12B year.;