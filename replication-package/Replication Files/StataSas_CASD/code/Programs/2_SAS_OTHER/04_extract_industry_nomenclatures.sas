/*
File:    04_extract_industry_nomenclatures.sas
Purpose: Build the activity-code crosswalk inputs used to harmonize industry classifications.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root casd_data_root;
%macro _mwoc0052;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0052;
%_mwoc0052;
%macro _mwoc0053;
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%mend _mwoc0053;
%_mwoc0053;
%macro _mwoc0054;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0054;
%_mwoc0054;
%macro _mwoc0055;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0055;
%_mwoc0055;


%include "&root\code\Tools\00_resolve_casd_paths.sas";

%macro _mw_assign_nom_ficus;

%local an;

%do an=2002 %to 2003;

    /* First resolve the annual FICUS directory. */
    %mw_find_subdir(
        parent=&casd_data_root,
        contains=FICUS_&an,
        contains2=STATISTIQUE ANNUELLE,
        out=_mw_nom_ficus_year_path,
        fullpath=1
    );

    /* Then resolve the actual legal-unit data directory. */
    %mw_find_subdir(
        parentvar=_mw_nom_ficus_year_path,
        contains=FICHIERS AVEC LES UNIT,
        exclude=CONSOLID,
        out=_mw_nom_fic_path,
        fullpath=1
    );

    libname fic&an. "%superq(_mw_nom_fic_path)";

%end;

%mend _mw_assign_nom_ficus;

%_mw_assign_nom_ficus;



data tp; set fic2002.tab(keep = siren ape n114) fic2002.fin(keep = siren ape n114) fic2002.apu(keep = siren ape n114);
if siren = " " then delete; if ape = " " then delete; if n114 = " " then delete; run;
proc sort nodupkey; by siren; run;
proc export data = tp replace dbms = stata
outfile = "&root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2002.dta"; run;
data tp; set fic2003.tab(keep = siren ape) fic2003.fin(keep = siren ape) fic2003.apu(keep = siren ape);
if siren = " " then delete; if ape = " " then delete; run;
proc sort nodupkey; by siren; run;
proc export data = tp replace dbms = stata
outfile = "&root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2003.dta"; run;
libname brn2008 "&casd_data_root\DECFISCPRO_BIC-RN_2008"; run;
data tp; set brn2008.Bicrn_ex_08_complet(keep = siren apenrev1 apenrev2);
if siren = " " then delete; if apenrev1 = " " then delete; if apenrev2 = " " then delete; run;
proc sort nodupkey; by siren; run;
proc export data = tp replace dbms = stata
outfile = "&root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2008.dta"; run;
