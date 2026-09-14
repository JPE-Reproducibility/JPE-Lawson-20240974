clear
* <ROOT>  C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe
* <CASD_DATA_ROOT> //casd.fr/casdfs/Projets/BROBOTS/DATA  \\casd.fr\casdfs\Projets\BROBOTS\DATA

* STAGE 1
* COMMAND BLOCK TO RESUBMIT IF STATA IS CLOSED
*do "<ROOT>/code/manual/00_PREPARE_DIRECTORIES.do" "<ROOT>" "<CASD_DATA_ROOT>"
do "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe/code/manual/00_PREPARE_DIRECTORIES.do" "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe" "\\casd.fr\casdfs\Projets\BROBOTS\DATA"

di "$root"
di "$casd_data_root"
di "$keep_intermediate"

* Switch to SAS !


* STAGE 4
do "$root/code/manual/02_STATA_CHECK_ENVIRONMENT.do"

* Switch to SAS !

* STAGE 13
do "$root/code/manual/11_STATA_PREPROCESSING.do"

* Switch to SAS !
* Close STATA in low-grade CASD environments



* STAGE 15
do "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe/code/manual/00_PREPARE_DIRECTORIES.do" "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe" "\\casd.fr\casdfs\Projets\BROBOTS\DATA"
do "$root/code/manual/13_STATA_BUILD_FINAL_ANALYSIS_DATA.do"

* STAGE 16
do "$root/code/manual/14_STATA_EMPIRICAL_ANALYSIS.do"


* STAGE 17
do "$root/code/manual/15_STATA_TABLE_B1.do"



