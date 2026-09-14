/*
Manual stage 12C/12C - low-resource alternative to stage 12.
Run only after all annual 12B files for 1996-2008 have completed successfully.
Produces the Table 5 calibration input and Figure 2 worker-level input.
*/

%global root casd_data_root keep_intermediate;
%macro _mw_lr_final_init;
    %if %length(%superq(root))=0 %then %let root=%sysget(REPLICATION_ROOT);
    %if %length(%superq(casd_data_root))=0 %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
    %if %length(%superq(root))=0 %then %do;
        %put ERROR: Set ROOT before running low-resource phase 12C.;
        %abort cancel;
    %end;
    %if %length(%superq(casd_data_root))=0 %then %do;
        %put ERROR: Set CASD_DATA_ROOT before running low-resource phase 12C.;
        %abort cancel;
    %end;
%mend _mw_lr_final_init;
%_mw_lr_final_init;
%sysmacdelete _mw_lr_final_init / nowarn;

/* KEEP_INTERMEDIATE is a plain 0/1 control value.  Keep its saved copy
   unquoted so this final phase does not propagate quoting from earlier runs. */
%let _mw_keep_saved=&keep_intermediate;
%let keep_intermediate=0;
options nomprint nomlogic nosymbolgen;
proc datasets library=work kill nolist; quit;

libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";

%macro _mw_lr_final_check;
    %if not %sysfunc(exist(a.t2002)) %then %do;
        %put ERROR: Missing a.t2002, required for Figure 2 worker-level data.;
        %abort cancel;
    %end;
    %if not %sysfunc(exist(a.t2006)) %then %do;
        %put ERROR: Missing a.t2006, required for Table 5 calibration moments.;
        %abort cancel;
    %end;
    %if not %sysfunc(exist(outp.firm_rtt_2002_final)) %then %do;
        %put ERROR: Missing outp.firm_rtt_2002_final. Run low-resource phase 12A first.;
        %abort cancel;
    %end;
%mend _mw_lr_final_check;
%_mw_lr_final_check;
%sysmacdelete _mw_lr_final_check / nowarn;

%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_compute_labor_costs.sas";

proc import out=work._policy_schedule
    datafile="&root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx"
    dbms=excel replace;
    range="CLEAN$";
    getnames=yes;
    mixed=no;
    scantext=yes;
    usedate=yes;
    scantime=yes;
run;

%let _mw_start=%sysfunc(datetime());
proc printto log="&root\output\logs\DadsCalibrationMoments2.txt" new; run;
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_calibration_moments.sas";
proc printto; run;

proc printto log="&root\output\logs\WorkerLevel.txt" new; run;
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_worker_level_data.sas";
proc printto; run;
%let _mw_end=%sysfunc(datetime());
%let _mw_syscc=&syscc;

/* Delete retained stage-12 SAS inputs only after successful final exports. */
%macro _mw_lr_final_cleanup;
    %if &_mw_syscc <= 4 %then %do;
        proc datasets library=work kill nolist; quit;
        proc datasets library=a kill nolist; quit;
        proc datasets library=outp kill nolist; quit;
    %end;
    %else %put ERROR: Phase 12C failed. Inputs were retained for diagnosis/rerun.;
%mend _mw_lr_final_cleanup;
%_mw_lr_final_cleanup;
%sysmacdelete _mw_lr_final_cleanup / nowarn;

%let _mw_elapsed=%sysevalf(&_mw_end - &_mw_start);
filename mwtim "&root\output\logs\timings\12C_SAS_BUILD_ORGANIZATION_FINALIZE.txt";
data _null_;
    file mwtim lrecl=32767;
    start=&_mw_start;
    finish=&_mw_end;
    elapsed=&_mw_elapsed;
    put "stage=12C - low-resource organization finalize";
    put "software=SAS";
    put "start=" start datetime19.;
    put "end=" finish datetime19.;
    put "elapsed_seconds=" elapsed 18.3;
    put "sas_syscc=&_mw_syscc";
run;
filename mwtim clear;

%let keep_intermediate=&_mw_keep_saved;

/* Release temporary macro state and librefs at the end of low-resource stage 12. */
%symdel _mw_keep_saved _mw_start _mw_end _mw_syscc _mw_elapsed / nowarn;
%sysmacdelete calcot rist dads_calibration_moments2 worker_level / nowarn;
libname q clear;
libname a clear;
libname outp clear;

%put NOTE: LOW-RESOURCE STAGE 12C COMPLETED.;
%put NOTE: Continue with manual stage 13 in Stata.;