
/* STAGE 2 */
/* COMMAND BLOCK TO RESUBMIT IF SAS IS CLOSED */
%let root=C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe;
%let casd_data_root=\\casd.fr\casdfs\Projets\BROBOTS\DATA;
%let keep_intermediate=1;

/* STAGE 3 */
%include "&root\code\manual\01_SAS_CHECK_ENVIRONMENT.sas";

/* Switch to stata! */

/* STAGE 5 */
%include "&root\code\manual\03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.sas"; 

/* STAGE 8 */
%include "&root\code\manual\06_SAS_EXTRACT_FICUS_ACCOUNTS.sas";

/* STAGE 9 */
%include "&root\code\manual\07_SAS_EXTRACT_TRAINING_2483.sas";

/* STAGE 10 */
%include "&root\code\manual\08_SAS_EXTRACT_DADS_1993_CALIBRATION.sas";

/* STAGE 11 */
%include "&root\code\manual\09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.sas";

/* STAGE 12 */
%include "&root\code\manual\10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.sas";
options nomprint nomlogic nosymbolgen;

/* STAGE 6 */
options nomprint nomlogic nosymbolgen;
%include "&root\code\manual\04_SAS_EXTRACT_DADS_JOBS.sas"; 

/* STAGE 7 */
%include "&root\code\manual\05_SAS_BUILD_MINIMUM_WAGE_INPUTS.sas";

/* Close SAS to purge work, Switch to stata! */

/* STAGE 14 */
%let root=C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe;
%let casd_data_root=\\casd.fr\casdfs\Projets\BROBOTS\Data;
%let keep_intermediate=0;
/* Otherwise SAS breaks in used CASD onfiguration - 
destroys the SIMUL datasets, that ave to be recreated in case of PB by 05_SAS_BUILD_MINIMUM_WAGE_INPUTS.sas */

%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12A_SAS_BUILD_ORGANIZATION_BASE.sas";


%let root=C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe;
%let casd_data_root=\\casd.fr\casdfs\Projets\BROBOTS\Data;
%let keep_intermediate=0;
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1996.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1997.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1998.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1999.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2000.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2001.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2002.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2003.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2004.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2005.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2006.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2007.sas";
%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2008.sas";

%include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12C_SAS_BUILD_ORGANIZATION_FINALIZE.sas";



/* Switch to stata! Close SAS */
