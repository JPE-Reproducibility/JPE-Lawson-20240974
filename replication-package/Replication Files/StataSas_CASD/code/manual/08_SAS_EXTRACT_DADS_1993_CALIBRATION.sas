/* Manual stage 8/15 with execution timing. */
%global root casd_data_root keep_intermediate;
%macro _mw_manual_init;
    %if %length(%superq(root))=0 %then %let root=%sysget(REPLICATION_ROOT);
    %if %length(%superq(casd_data_root))=0 %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
    %if %length(%superq(root))=0 %then %do;
        %put ERROR: Set ROOT before running this manual SAS stage.;
        %abort cancel;
    %end;
    %if %length(%superq(casd_data_root))=0 %then %do;
        %put ERROR: Set CASD_DATA_ROOT before running this manual SAS stage.;
        %abort cancel;
    %end;
    %if %length(%superq(keep_intermediate))=0 %then %let keep_intermediate=1;
%mend _mw_manual_init;
%_mw_manual_init;
%sysmacdelete _mw_manual_init / nowarn;

%let _mw_start=%sysfunc(datetime());
%include "&root\code\Programs\2_SAS_OTHER\03_extract_dads_1993_calibration.sas";
%let _mw_end=%sysfunc(datetime());
%let _mw_elapsed=%sysevalf(&_mw_end - &_mw_start);
%let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
%let _mw_hours=%sysevalf(&_mw_elapsed / 3600);
%let _mw_syscc=&syscc;

filename mwtim "&root\output\logs\timings\08_SAS_EXTRACT_DADS_1993_CALIBRATION.txt";
data _null_;
    file mwtim lrecl=32767;
    start = &_mw_start;
    finish = &_mw_end;
    elapsed = &_mw_elapsed;
    minutes = &_mw_minutes;
    hours = &_mw_hours;
    put "stage=8/15 - SAS extract DADS 1993 calibration";
    put "software=SAS";
    put "start=" start datetime19.;
    put "end=" finish datetime19.;
    put "elapsed_seconds=" elapsed 18.3;
    put "elapsed_minutes=" minutes 18.3;
    put "elapsed_hours=" hours 18.6;
    put "sas_syscc=&_mw_syscc";
run;
filename mwtim clear;

%put NOTE: MANUAL STAGE 8/15 COMPLETED.;
%put NOTE: Timing file: &root\output\logs\timings\08_SAS_EXTRACT_DADS_1993_CALIBRATION.txt;
