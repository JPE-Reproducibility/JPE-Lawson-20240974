/*
Manual Appendix G stage with execution timing.
Purpose: reproduce the Table G1 "Share of 0-layer firms" target from FARE 2010-2016.
Status: the scientific rule is modernized from the historical SAS program; this wrapper must be
        re-tested in the certification environment before it is described as validated.
*/
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

/* Ensure timing directories exist when this stand-alone wrapper is run outside Stage 00. */
options dlcreatedir;
libname _mwlg "&root\output\logs";
libname _mwlg clear;
libname _mwtm "&root\output\logs\timings";
libname _mwtm clear;
options nodlcreatedir;

%let _mw_start=%sysfunc(datetime());
%include "&root\code\Programs\7_SAS_APPENDIX_G\01_compute_table_g1_zero_layer_moment.sas";
%let _mw_end=%sysfunc(datetime());
%let _mw_elapsed=%sysevalf(&_mw_end - &_mw_start);
%let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
%let _mw_hours=%sysevalf(&_mw_elapsed / 3600);
%let _mw_syscc=&syscc;

filename mwtim "&root\output\logs\timings\10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.txt";
data _null_;
    file mwtim lrecl=32767;
    start=&_mw_start;
    finish=&_mw_end;
    elapsed=&_mw_elapsed;
    minutes=&_mw_minutes;
    hours=&_mw_hours;
    put "stage=16 - SAS Table G1 FARE 2010-2016 zero-layer moment";
    put "software=SAS";
    put "start=" start datetime19.;
    put "end=" finish datetime19.;
    put "elapsed_seconds=" elapsed 18.3;
    put "elapsed_minutes=" minutes 18.3;
    put "elapsed_hours=" hours 18.6;
    put "sas_syscc=&_mw_syscc";
run;
filename mwtim clear;

%put NOTE: MANUAL STAGE 16 COMPLETED.;
%put NOTE: Timing file: &root\output\logs\timings\16_SAS_TABLE_G1_ZERO_LAYER_MOMENT.txt;
