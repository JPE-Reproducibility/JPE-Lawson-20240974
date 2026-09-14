/*
File:    02_extract_dads_jobs.sas
Purpose: Extract and harmonize job-level DADS/BTS Postes records for 1995-2008.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root casd_data_root;
%macro _mwoc0022;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0022;
%_mwoc0022;
%macro _mwoc0023;
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%mend _mwoc0023;
%_mwoc0023;
%macro _mwoc0024;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0024;
%_mwoc0024;
%macro _mwoc0025;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0025;
%_mwoc0025;

libname out1 "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
option compress=yes;

/* Assign each annual CASD DADS/BTS Postes product. */
%macro libnames_list;
%do annee=1995 %to 2008;
libname REG&annee. "&casd_data_root\DADS_DADS Postes_&annee.";
%end;
%mend;
%libnames_list;

%include "&root\code\Programs\1_SAS_DADS\MACROS\macros_dads_job_extraction.sas";

/* The same regional partition is used in every year. */
%let region_1995 = 11 21 22 23 24 25 26 31 41 42 43 52 53 54 72 73 74 82 83 91 93 94 97 99;
%count_item_list(&region_1995.);
%let cntitem_reg_1995=%eval(&cntitem.);
%macro region_lists;
%do annee=1996 %to 2008;
%global region_&annee. cntitem_reg_&annee.;
%let region_&annee.=&region_1995.;
%let cntitem_reg_&annee.=%eval(&cntitem_reg_1995.);
%end;
%mend;
%region_lists;

/* Process one year and one region at a time.  The compact RTT statistics are
   produced before the job-level file is narrowed to variables used later. */
proc datasets library=work kill nolist; quit;
%macro build_dads_jobs;
%do annee=1995 %to 2008;
    %regions_append(&annee.);
    %eqtp(&annee.);
    %build_rtt_stats(&annee.);

    data out1.t&annee.;
        set t&annee.(keep=
            age catjur apet filt domempl duree cs nbheur cpfd cpfd_1 s_brut s_net
            siren siret datdeb datfin dept comt cda an e_eqtp_ent
            %if %eval(&annee.) >= 2002 %then %do; typ_emploi %end;
        );
    run;
    proc datasets library=work kill nolist; quit;
%end;
%mend;
%build_dads_jobs;
