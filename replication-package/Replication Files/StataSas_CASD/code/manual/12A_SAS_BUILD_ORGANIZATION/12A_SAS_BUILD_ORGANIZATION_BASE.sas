/*
Manual stage 12A/12C - low-resource alternative to stage 12.
Build the baseline firm history and annual RTT/GMR firm files.
Run after manual stage 11 and before the 12B annual files.
This phase uses the same scientific macros as the standard stage 12.
*/

%global root casd_data_root keep_intermediate;
%macro _mw_lr_init;
    %if %length(%superq(root))=0 %then %let root=%sysget(REPLICATION_ROOT);
    %if %length(%superq(casd_data_root))=0 %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
    %if %length(%superq(root))=0 %then %do;
        %put ERROR: Set ROOT before running this low-resource SAS phase.;
        %abort cancel;
    %end;
    %if %length(%superq(casd_data_root))=0 %then %do;
        %put ERROR: Set CASD_DATA_ROOT before running this low-resource SAS phase.;
        %abort cancel;
    %end;
%mend _mw_lr_init;
%_mw_lr_init;
%sysmacdelete _mw_lr_init / nowarn;

/* Low-resource stage 12 deletes intermediates immediately after their last use. */
%let _mw_keep_saved=%superq(keep_intermediate);
%let keep_intermediate=0;
options nomprint nomlogic nosymbolgen;

libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
libname sim  "&root\output\generated\Output_data\For_1_SAS_DADS\SIMUL";
libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";

%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_compute_labor_costs.sas";
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_simulated_firm_info.sas";
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_history.sas";
%include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_rtt_history.sas";

/* Only the two static lookups needed by firm_rtt_2002 are loaded in this phase. */
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

proc import out=work._generic_policy_grid
    datafile="&root\output\generated\Output_data\For_3_STATA_PREPROCESSING\GENERIC\generic_data.csv"
    dbms=csv replace;
    getnames=yes;
    datarow=2;
run;

%let _mw_start=%sysfunc(datetime());
proc printto log="&root\output\logs\LogNoApprentis_LP02_vol1_low_resource.txt" new; run;
%firm_info_2002;
%firm_rtt_2002;
proc printto; run;
%let _mw_end=%sysfunc(datetime());
%let _mw_syscc=&syscc;

/* Delete last-use inputs only after a successful base phase. */
%macro _mw_lr_base_cleanup;
    %if &_mw_syscc <= 4 %then %do;
        proc datasets library=outp nolist; delete firm_rtt1995; quit;
        proc datasets library=a nolist; delete t1995; quit;
        proc datasets library=work kill nolist; quit;
    %end;
    %else %put ERROR: Phase 12A failed. Inputs were retained for diagnosis/rerun.;
%mend _mw_lr_base_cleanup;
%_mw_lr_base_cleanup;
%sysmacdelete _mw_lr_base_cleanup / nowarn;

%let _mw_elapsed=%sysevalf(&_mw_end - &_mw_start);
filename mwtim "&root\output\logs\timings\12A_SAS_BUILD_ORGANIZATION_BASE.txt";
data _null_;
    file mwtim lrecl=32767;
    start=&_mw_start;
    finish=&_mw_end;
    elapsed=&_mw_elapsed;
    put "stage=12A - low-resource organization base";
    put "software=SAS";
    put "start=" start datetime19.;
    put "end=" finish datetime19.;
    put "elapsed_seconds=" elapsed 18.3;
    put "sas_syscc=&_mw_syscc";
run;
filename mwtim clear;

%let keep_intermediate=&_mw_keep_saved;
%put NOTE: LOW-RESOURCE STAGE 12A COMPLETED.;
%put NOTE: Next run the 12B annual files, one year at a time, from 1996 through 2008.;
