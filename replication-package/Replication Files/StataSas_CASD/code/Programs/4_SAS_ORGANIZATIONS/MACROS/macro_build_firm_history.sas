/*
File:    macro_build_firm_history.sas
Purpose: Define firm-history transformations used to identify continuously active firms and sample histories.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%macro firm_info_2002;
%let listyear2  = %str(1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008);
%let countyear1 = %sysfunc(countw(&listyear2));
%do zz = 1 %to &countyear1;
	%let year2 = %scan(&listyear2,&zz,%str(,));
data data&year2.; set a.t&year2.;
	year = &year2.;
	E = 1;
	if filt eq '1';
	if missing(cs) ne 1;
	if age >= 16; if age <= 65;
	if domempl in ('2' '9');
	if substr(catjur,1,1) = '5';
	if cpfd in ('P' 'C');
	if s_net < s_brut;
	if missing(s_brut) eq 0;
	if missing(nbheur) eq 0;
	if nbheur > 0;
run;
%if %eval(&year2.) < 2002 %then %do;
data data&year2.; set data&year2.;
	if cda not in ('A');
	if cs  not in ('71','72','73','74','75','76','79');
run;
%end;
%if %eval(&year2.) >= 2002 %then %do;
data data&year2.; set data&year2.;
	if cda not in ('A');
	if typ_emploi in ('O');
run;
%end;
proc sort data = data&year2.; by siren; run;
proc means data = data&year2. noprint;
		by siren;
		var E;
		output out = totpostes_siren (drop = _type_ _freq_)
		sum        = totpostes_siren;
run;
proc sort data = data&year2.; by siren; run;
proc sort data = totpostes_siren; by siren; run;
data data&year2.; merge data&year2. totpostes_siren; by siren; run;
proc sort data = data&year2.; by siret; run;
proc means data = data&year2. noprint;
		by siret;
		var E;
		output out = totpostes_siret (drop = _type_ _freq_)
		sum        = totpostes_siret;
run;
proc sort data = data&year2.; by siret; run;
proc sort data = totpostes_siret; by siret; run;
data data&year2.; merge data&year2. totpostes_siret; by siret; run;
proc sort data = data&year2.; by siret; run;
data data&year2.; set data&year2.; by siret;
	if first.siret;
run;
data data&year2.; set data&year2.;
	keep siren siret year apet totpostes_siren totpostes_siret;
run;
%if %eval(&year2.) < 2002  %then %do;
data data&year2.; set data&year2.;
	length siren2 $ 9;
	siren2 = substr(siret,1,9);
run;
data data&year2.; set data&year2.;
	drop siren;
run;
data data&year2.; set data&year2.;
	rename siren2 = siren;
run;
%end;
data outp.firm_info&year2.; set data&year2.; run;
proc datasets library = work;
	delete data&year2. totpostes_siret totpostes_siren;
run;
%end;
%mend;
