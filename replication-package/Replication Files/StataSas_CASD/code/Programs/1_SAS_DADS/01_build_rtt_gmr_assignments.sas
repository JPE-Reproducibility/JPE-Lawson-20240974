/*
File:    01_build_rtt_gmr_assignments.sas
Purpose: Construct firm-level GMR assignments from the Aubry administrative file.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%global root casd_data_root;
%macro _mwoc0018;
%if %superq(root)= %then %let root=%sysget(REPLICATION_ROOT);
%mend _mwoc0018;
%_mwoc0018;
%macro _mwoc0019;
%if %superq(casd_data_root)= %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
%mend _mwoc0019;
%_mwoc0019;
%macro _mwoc0020;
%if %superq(root)= %then %do; %put ERROR: REPLICATION_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0020;
%_mwoc0020;
%macro _mwoc0021;
%if %superq(casd_data_root)= %then %do; %put ERROR: CASD_DATA_ROOT is not set.; %abort cancel; %end;
%mend _mwoc0021;
%_mwoc0021;

%include "&root\code\Tools\00_resolve_casd_paths.sas";
%mw_find_subdir(parent=&casd_data_root, contains=COTISATIONS SOCIALES, contains2=_2000, out=_mw_rtt_dir);
libname rtt  "&casd_data_root\&_mw_rtt_dir";
libname out2 "&root\output\generated\Output_data\For_1_SAS_DADS\GMR";

data rtt;
set rtt.aubry2(keep = siret aasign0 aacon0 aardt0 aaext0 mmsign mmext mmcon mmrdt categ2 categ3 tpsmic ACCE ACCB);
aasign = input(aasign0,?? 4.);
aacon = input(aacon0,?? 4.);
aardt = input(aardt0,?? 4.);
aaext = input(aaext0,?? 4.);
if aasign = . then mmsign = .;
if (aasign ne . and mmsign =.) then mmsign = 1;
if aacon = . then mmcon = .;
if (aacon ne . and mmcon =.) then mmcon = 1;
if aardt = . then mmrdt = .;
if (aardt ne . and mmrdt =.) then mmrdt = 1;
if aaext = . then mmext = .;
if (aaext ne . and mmext =.) then mmext = 1;
if categ2 = 0 then typeacc = 0;
if categ2 = 1 then typeacc = 1;
if categ2 = 5 and categ3 = 1 then typeacc = 5;
if typeacc = 5 and tpsmic ne 1 then typeacc = 6;
if categ2 = 6 then typeacc = 3;
if categ2 in (3,4) then typeacc = 9;
if categ2 in (8,9) then typeacc = 9;
if categ2 = 7 and categ3 = 2 then typeacc = 4;
if categ2 = 2 then typeacc = 2;
if categ2 = 5 and categ3 = 2 then typeacc = 7;
aa_ACCE = aasign;
mm_ACCE = mmsign;
if aacon < 3000 then aa_ACCB = aacon;
if aacon < 3000 then mm_ACCB = mmcon;
if aaext < 3000 and aaext ne . then aa_ACCB = aaext;
if aaext < 3000 and aaext ne . then mm_ACCB = mmext;
drop aasign0 aacon0 aardt0 aaext0 tpsmic aasign mmsign aacon mmcon aaext mmext;
run;

data rtt;
set rtt;
drop categ2 categ3;
run;

data robien;
set rtt;
if typeacc ne 0 then delete;
annee_aide = aa_ACCE;
mois_aide = mm_ACCE;
if annee_aide = . then mois_aide = mm_ACCB;
if annee_aide = . then annee_aide = aa_ACCB;
if annee_aide < 1996 then mois_aide = 1;
if annee_aide < 1996 then annee_aide = 1996;
if annee_aide = . then mois_aide = 1;
if annee_aide = . then annee_aide = 1996;
keep SIRET typeacc annee_aide mois_aide;
run;

data aubryI;
set rtt;
if typeacc ne 1 then delete;
annee_aide = aardt;
mois_aide = mmrdt;
if aardt < aa_ACCE and aa_ACCE ne . and ACCE = 1 then mois_aide = mm_ACCE;
if aardt < aa_ACCE and aa_ACCE ne . and ACCE = 1 then annee_aide = aa_ACCE;
if annee_aide ne . and aa_ACCB ne . and aa_ACCB > annee_aide and ACCE = 0 and ACCB = 1 then mois_aide = mm_ACCB;
if annee_aide ne . and aa_ACCB ne . and aa_ACCB > annee_aide and ACCE = 0 and ACCB = 1 then annee_aide = aa_ACCB;
if annee_aide = . then mois_aide = mm_ACCE;
if annee_aide = . then annee_aide = aa_ACCE;
if annee_aide = . then mois_aide = mm_ACCB;
if annee_aide = . then annee_aide = aa_ACCB;
if annee_aide < 1998 then mois_aide = 1;
if annee_aide < 1998 then annee_aide = 1998;
if annee_aide = . then mois_aide = 1;
if annee_aide = . then annee_aide = 1998;
keep SIRET typeacc annee_aide mois_aide;
run;

data aubryII;
set rtt;
if typeacc in (0,1,9) then delete;
annee_aide = aardt;
mois_aide = mmrdt;
if aardt < aa_ACCE and aa_ACCE ne . and ACCE = 1 then mois_aide = mm_ACCE;
if aardt < aa_ACCE and aa_ACCE ne . and ACCE = 1 then annee_aide = aa_ACCE;
if annee_aide ne . and aa_ACCB ne . and aa_ACCB > annee_aide and ACCE = 0 and ACCB = 1 then mois_aide = mm_ACCB;
if annee_aide ne . and aa_ACCB ne . and aa_ACCB > annee_aide and ACCE = 0 and ACCB = 1 then annee_aide = aa_ACCB;
if annee_aide = . then mois_aide = mm_ACCE;
if annee_aide = . then annee_aide = aa_ACCE;
if annee_aide = . then mois_aide = mm_ACCB;
if annee_aide = . then annee_aide = aa_ACCB;
if annee_aide < 2000 then mois_aide = 1;
if annee_aide < 2000 then annee_aide = 2000;
if annee_aide = . then mois_aide = 1;
if annee_aide = . then annee_aide = 2000;
keep SIRET typeacc annee_aide mois_aide;
run;

data no_help_v2;
set rtt;
if typeacc ne 9 then delete;
annee_aide = aardt;
mois_aide = mmrdt;
if aardt < aa_ACCE and aa_ACCE ne . and ACCE = 1 then mois_aide = mm_ACCE;
if aardt < aa_ACCE and aa_ACCE ne . and ACCE = 1 then annee_aide = aa_ACCE;
if annee_aide ne . and aa_ACCB ne . and aa_ACCB > annee_aide and ACCE = 0 and ACCB = 1 then mois_aide = mm_ACCB;
if annee_aide ne . and aa_ACCB ne . and aa_ACCB > annee_aide and ACCE = 0 and ACCB = 1 then annee_aide = aa_ACCB;
if annee_aide = . then mois_aide = mm_ACCE;
if annee_aide = . then annee_aide = aa_ACCE;
if annee_aide = . then mois_aide = mm_ACCB;
if annee_aide = . then annee_aide = aa_ACCB;
if annee_aide < 2000 then mois_aide = 1;
if annee_aide < 2000 then annee_aide = 2000;
if annee_aide = . then mois_aide = 1;
if annee_aide = . then annee_aide = 2000;
keep SIRET typeacc annee_aide mois_aide;
run;

data out2.gmr;
set robien aubryI aubryII no_help_v2;
GMR1 = (annee_aide < 1999) or ((annee_aide = 1999) and (mois_aide < 7));
GMR2 = (annee_aide < 2000) or ((annee_aide = 2000) and (mois_aide < 7));
GMR2 = GMR2 * (1 - GMR1);
GMR3 = (annee_aide < 2001) or ((annee_aide = 2001) and (mois_aide < 7));
GMR3 = GMR3 * (1 - GMR1) * (1 - GMR2);
GMR4 = (annee_aide < 2002) or ((annee_aide = 2002) and (mois_aide < 7));
GMR4 = GMR4 * (1 - GMR1) * (1 - GMR2) * (1 - GMR3);
GMR5 = (1- GMR4) * (1 - GMR1) * (1 - GMR2) * (1 - GMR3);
GMR = GMR1 + 2*GMR2 + 3*GMR3 + 4*GMR4 + 5*GMR5;
keep SIRET typeacc GMR annee_aide mois_aide;
rename annee_aide = annee_rtt mois_aide = mois_rtt;
run;
proc sort data=out2.gmr nodupkey; by siret; run;

/* Remove WORK-only construction datasets; the GMR SAS file is the only retained output. */
proc datasets library=work nolist;
delete rtt robien aubryI aubryII no_help_v2;
quit;
