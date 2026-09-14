/*
File:    00_check_sas_environment.sas
Purpose: Record SAS version/platform and confirm package-level path variables before the CASD analysis.
Usage:   Run through the stage or package driver before scientific stages.
*/
%macro _mw_SAS_envrt_vZZ;
%global root casd_data_root;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mw_SAS_envrt_vZZ;
%_mw_SAS_envrt_vZZ;
%sysmacdelete _mw_SAS_envrt_vZZ / nowarn;

%put NOTE: SYSVLONG4=&SYSVLONG4.;
%put NOTE: SYSSCP=&SYSSCP.;
%put NOTE: SYSSCPL=&SYSSCPL.;
%put NOTE: XCMD=%sysfunc(getoption(xcmd));
proc options option=(cpucount memsize sortsize threads encoding); run;

/* The parent launcher creates output/run_metadata. Manual users create it in Stage 00. */
filename _mwenv "&root\output\run_metadata\sas_environment.txt" encoding='utf-8';
data _null_;
    file _mwenv;
    put "sas_version=&SYSVLONG4.";
    put "sysscp=&SYSSCP.";
    put "sysscpl=&SYSSCPL.";
    put "encoding=%sysfunc(getoption(encoding))";
    put "cpucount=%sysfunc(getoption(cpucount))";
    put "memsize=%sysfunc(getoption(memsize))";
    put "sortsize=%sysfunc(getoption(sortsize))";
    put "threads=%sysfunc(getoption(threads))";
    put "xcmd=%sysfunc(getoption(xcmd))";
run;
filename _mwenv clear;
