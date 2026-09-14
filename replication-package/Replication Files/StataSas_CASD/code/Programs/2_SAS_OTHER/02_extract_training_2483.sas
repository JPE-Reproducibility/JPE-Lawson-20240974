/*
File:    02_extract_training_2483.sas
Purpose: Export the 2002-2007 Declaration 2483 training files from CASD to Stata format.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root casd_data_root;
%macro _mwoc0044;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0044;
%_mwoc0044;
%macro _mwoc0045;
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%mend _mwoc0045;
%_mwoc0045;
%macro _mwoc0046;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0046;
%_mwoc0046;
%macro _mwoc0047;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0047;
%_mwoc0047;
%include "&root\code\Tools\00_resolve_casd_paths.sas";
%macro _mw_assign_2483;
%do an=2002 %to 2007;
    %mw_find_subdir(parent=&casd_data_root, contains=2483_&an, out=_mw_fp_dir);
    libname FP&an "&casd_data_root\&_mw_fp_dir";
%end;
%mend _mw_assign_2483;
%_mw_assign_2483;
/* Export only fields consumed by 01_prepare_training_2483.do. */
proc export data=FP2002.fp2002(keep=siren honq02 hoq02 hemp02 hpi02 hcad02) replace dbms=stata
    outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2002.dta"; run;
proc export data=FP2003.fp2003(keep=SIREN OHTOT03 HTOT03) replace dbms=stata
    outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2003.dta"; run;
proc export data=FP2004.fp2004(keep=SIREN heurcad heurpi heuremp heuro heurform) replace dbms=stata
    outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2004.dta"; run;
proc export data=FP2005.Variables_brutes_2005(keep=SIREN BE2 BE3 BE4 BE5 BE6) replace dbms=stata
    outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2005.dta"; run;
proc export data=FP2006.Variables_brutes_2006(keep=SIREN F12A F12B BC2 BC3 BC4 BC5 BC6 BD2 BD3 BD4 BD5 BD6 BE2 BE3 BE4 BE5 BE6) replace dbms=stata
    outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2006.dta"; run;
proc export data=FP2007.Variables_brutes_2007(keep=SIREN F12A F12B BC2 BC3 BC4 BC5 BC6 BD2 BD3 BD4 BD5 BD6 BE2 BE3 BE4 BE5 BE6) replace dbms=stata
    outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2007.dta"; run;
