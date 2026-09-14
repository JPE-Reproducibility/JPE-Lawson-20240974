/*
File:    03_extract_dads_1993_calibration.sas
Purpose: Extract the 1993 DADS/BTS firm employment measure used for the new-firm calibration moment.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root casd_data_root;
%macro _mwoc0048;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0048;
%_mwoc0048;
%macro _mwoc0049;
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%mend _mwoc0049;
%_mwoc0049;
%macro _mwoc0050;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0050;
%_mwoc0050;
%macro _mwoc0051;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0051;
%_mwoc0051;
libname dads93  "&casd_data_root\DADS_DADS Entreprises_1993"; run;
data extract; set dads93.ent93(keep = siren nbsal);
rename nbsal = nbsal_93;
run;
proc sort nodupkey; by siren; run;
PROC EXPORT DATA= WORK.EXTRACT
	OUTFILE = "&root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta"
            DBMS=STATA REPLACE;
RUN;
