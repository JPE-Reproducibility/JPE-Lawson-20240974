/*
File:    01_extract_ficus_accounts.sas
Purpose: Extract and harmonize the 1996-2007 FICUS/SUSE firm-accounting files used downstream.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root casd_data_root;
%macro _mwoc0034;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0034;
%_mwoc0034;
%macro _mwoc0035;
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%mend _mwoc0035;
%_mwoc0035;
%macro _mwoc0036;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0036;
%_mwoc0036;
%macro _mwoc0037;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0037;
%_mwoc0037;

/* Resolve FICUS paths without hard-coding apostrophes or accented names. */
%include "&root\code\Tools\00_resolve_casd_paths.sas";


/* --------------------------------------------------------------- */
/* 1996-2000                                                       */
/* --------------------------------------------------------------- */

%macro _mw_assign_ficus_1996_2000;

%local an;

%do an=1996 %to 2000;

    /* Locate the annual FICUS directory. */
    %mw_find_subdir(
        parent=&casd_data_root,
        contains=FICUS_&an,
        contains2=STATISTIQUE ANNUELLE,
        out=_mw_ficus_year_path,
        fullpath=1
    );

    /* Locate "Fichiers en euros" below it. */
    %mw_find_subdir(
        parentvar=_mw_ficus_year_path,
        contains=FICHIERS EN EUROS,
        out=_mw_fic_path,
        fullpath=1
    );

    libname fic&an. "%superq(_mw_fic_path)";

%end;

%mend _mw_assign_ficus_1996_2000;

%_mw_assign_ficus_1996_2000;


/* --------------------------------------------------------------- */
/* 2001-2004                                                       */
/* --------------------------------------------------------------- */

%macro _mw_assign_ficus_2001_2004;

%local an;

%do an=2001 %to 2004;

    %mw_find_subdir(
        parent=&casd_data_root,
        contains=FICUS_&an,
        contains2=STATISTIQUE ANNUELLE,
        out=_mw_ficus_year_path,
        fullpath=1
    );

    %mw_find_subdir(
        parentvar=_mw_ficus_year_path,
        contains=FICHIERS AVEC LES UNIT,
        exclude=CONSOLID,
        out=_mw_fic_path,
        fullpath=1
    );

    libname fic&an. "%superq(_mw_fic_path)";

%end;

%mend _mw_assign_ficus_2001_2004;

%_mw_assign_ficus_2001_2004;


/* --------------------------------------------------------------- */
/* 2005-2006                                                       */
/* --------------------------------------------------------------- */

%macro _mw_assign_ficus_2005_2006;

%local an;

%do an=2005 %to 2006;

    %mw_find_subdir(
        parent=&casd_data_root,
        contains=FICUS_&an,
        contains2=STATISTIQUE ANNUELLE,
        out=_mw_ficus_year_path,
        fullpath=1
    );

    %mw_find_subdir(
        parentvar=_mw_ficus_year_path,
        contains=CONSOLID,
        out=_mw_ficA_path,
        fullpath=1
    );

    %mw_find_subdir(
        parentvar=_mw_ficus_year_path,
        contains=DISPONIBLES,
        out=_mw_ficB_path,
        fullpath=1
    );

    libname ficA&an. "%superq(_mw_ficA_path)";
    libname ficB&an. "%superq(_mw_ficB_path)";

%end;

%mend _mw_assign_ficus_2005_2006;

%_mw_assign_ficus_2005_2006;


/* --------------------------------------------------------------- */
/* 2007                                                            */
/* --------------------------------------------------------------- */

%mw_find_subdir(
    parent=&casd_data_root,
    contains=FICUS_2007,
    contains2=STATISTIQUE ANNUELLE,
    out=_mw_ficus_2007_path,
    fullpath=1
);

%mw_find_subdir(
    parentvar=_mw_ficus_2007_path,
    contains=CONSOLID,
    out=_mw_ficA_2007_path,
    fullpath=1
);

%mw_find_subdir(
    parentvar=_mw_ficus_2007_path,
    contains=DISPONIBLES,
    out=_mw_ficB_2007_path,
    fullpath=1
);

libname ficA2007 "%superq(_mw_ficA_2007_path)";
libname ficB2007 "%superq(_mw_ficB_2007_path)";





%let var_1 = siren cj catotal vaht ACHAMAR ACHAMPR AUTACHA effsalm saltrai charsoc immocor amimcor invcorp;
%let var_100 = &var_1.;

%macro normalize_ficus(source,outfile);
data tp;
    set &source.;
    rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
    if siren=" " then delete;
run;
proc sort data=tp; by siren; run;
proc export data=tp replace dbms=stata outfile="&outfile."; run;
proc datasets library=work nolist; delete tp; quit;
%mend;

/* 1996-1999 use the common historical layout. */
%macro _mwoc0041;
%do an=1996 %to 1999;
%normalize_ficus(
    fic&an..tab(keep=&var_1.) fic&an..fin(keep=&var_1.) fic&an..apu(keep=&var_1.),
    &root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_&an..dta
);
%end;
%mend _mwoc0041;
%_mwoc0041;

/* 2000 uses the same retained subset of accounting variables. */
%normalize_ficus(
    fic2000.tab(keep=&var_100.) fic2000.fin(keep=&var_100.) fic2000.apu(keep=&var_100.),
    &root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_2000.dta
);

/* 2001-2004 return to the common layout. */
%macro _mwoc0042;
%do an=2001 %to 2004;
%normalize_ficus(
    fic&an..tab(keep=&var_1.) fic&an..fin(keep=&var_1.) fic&an..apu(keep=&var_1.),
    &root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_&an..dta
);
%end;
%mend _mwoc0042;
%_mwoc0042;

/* 2005-2006 combine the profiled and non-profiled legal-unit files exactly as in the submitted code. */
%macro _mwoc0043;
%do an=2005 %to 2006;
data tp;
    set ficA&an..tab(keep=&var_1.) ficA&an..fin(keep=&var_1.) ficA&an..apu(keep=&var_1.);
    rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
    if siren=" " then delete;
run;
proc sort data=tp; by siren; run;
data lst;
    set ficB&an..tab(keep=sirpro);
    rename sirpro=siren;
run;
proc sort data=lst nodupkey; by siren; run;
data tp;
    merge tp(in=a) lst(in=b);
    by siren;
    if a and (not b);
run;
data lst; set tp(keep=siren); run;
proc sort data=lst nodupkey; by siren; run;
data tp2;
    set ficB&an..tab(keep=&var_1.);
    rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
    if siren=" " then delete;
run;
proc sort data=tp2; by siren; run;
data tp2; merge tp2(in=a) lst(in=b); by siren; if a and (not b); run;
data tp; merge tp(in=a) tp2(in=b); by siren; if a or b; run;
proc sort data=tp; by siren; run;
proc export data=tp replace dbms=stata outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_&an..dta"; run;
proc datasets library=work nolist; delete tp tp2 lst; quit;
%end;
%mend _mwoc0043;
%_mwoc0043;

/* 2007 uses all three profiled-file components. */
data tp;
    set ficA2007.tab(keep=&var_1.) ficA2007.fin(keep=&var_1.) ficA2007.apu(keep=&var_1.);
    rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
    if siren=" " then delete;
run;
proc sort data=tp; by siren; run;
data lst;
    set ficB2007.tab(keep=sirpro) ficB2007.fin(keep=sirpro) ficB2007.apu(keep=sirpro);
    rename sirpro=siren;
run;
proc sort data=lst nodupkey; by siren; run;
data tp; merge tp(in=a) lst(in=b); by siren; if a and (not b); run;
data lst; set tp(keep=siren); run;
proc sort data=lst nodupkey; by siren; run;
data tp2;
    set ficB2007.tab(keep=&var_1.) ficB2007.fin(keep=&var_1.) ficB2007.apu(keep=&var_1.);
    rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
    if siren=" " then delete;
run;
proc sort data=tp2; by siren; run;
data tp2; merge tp2(in=a) lst(in=b); by siren; if a and (not b); run;
data tp; merge tp(in=a) tp2(in=b); by siren; if a or b; run;
proc sort data=tp; by siren; run;
proc export data=tp replace dbms=stata outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_2007.dta"; run;

proc datasets library=work nolist; delete tp tp2 lst; quit;
