/*
File:    macro_build_simulated_firm_info.sas
Purpose: Compute statutory minimum-wage labor costs over the policy-characteristic grid.
Usage:   Run through the stage or package driver unless the README says otherwise.
*/

%macro firm_info_sim(annee);
data t&annee.; set _generic_policy_grid;
	an = &annee.;
	mois_aide  = mois_rtt;
	annee_aide = annee_rtt;
	if gmr = 6 then annee_aide = .;
	if gmr = 6 then mois_aide  = .;
	if gmr = 6 then typeacc    = .;
	if typeacc = 9 then annee_aide = .;
	if typeacc = 9 then mois_aide = .;
	C = 1;
	GMR1 = 0;
	GMR2 = 0;
	GMR3 = 0;
	GMR4 = 0;
	GMR5 = 0;
	GMR6 = 0;
	if gmr = 1 then GMR1 = 1;
	if gmr = 2 then GMR2 = 1;
	if gmr = 3 then GMR3 = 1;
	if gmr = 4 then GMR4 = 1;
	if gmr = 5 then GMR5 = 1;
	if gmr = 6 then GMR6 = 1;
	apet = "235A";
	if apet_alt = 1 then apet = "602M";
	if apet_alt = 2 then apet = "555A";
	if apet_alt = 3 then apet = "177A";
	if apet_alt = 4 then apet = "188A";
	if apet_alt = 5 then apet = "199A";
	if min_an   = 1994 then min_an = .;
    if (gmr ne 6) | (gmr eq 6 & annee_rtt eq 2008 & mois_rtt eq 6);
run;
proc sort data = t&annee. nodupkey; by gmr annee_rtt mois_rtt typeacc e_eqtp_AAide e_eqtp_ent mdo mrtt apet_alt min_an large_f; run;
data gmr; set _policy_schedule;
	if an ne &annee. then delete;
	C = 1;
	smic_brut = (6 * 169 * smic_h1 + 6 * 169 * smic_h2)/12;
    smic_brut_large = (6 * 152 * smic_h1 + 6 * 152 * smic_h2)/12 + (6 * 17 * 1.25 * smic_h1 + 6 * 17 * 1.25 * smic_h2)/12;
    smic_brut_small = (6 * 152 * smic_h1 + 6 * 152 * smic_h2)/12 + (6 * 17 * 1.10 * smic_h1 + 6 * 17 * 1.10 * smic_h2)/12;
	gmr1_brut = (6 * gmr1_m1 + 6 * gmr1_m2)/12;
	gmr2_brut = (6 * gmr2_m1 + 6 * gmr2_m2)/12;
	gmr3_brut = (6 * gmr3_m1 + 6 * gmr3_m2)/12;
	gmr4_brut = (6 * gmr4_m1 + 6 * gmr4_m2)/12;
	gmr5_brut = (6 * gmr5_m1 + 6 * gmr5_m2)/12;
	keep C smic_brut gmr1_brut gmr2_brut gmr3_brut gmr4_brut gmr5_brut smic_brut_large smic_brut_small;
run;
data t&annee.; merge t&annee.(in = a) gmr(in = b); by C;
if (&annee. >= 2000) & large_f = 1 then smic_brut = smic_brut_large;
if (&annee. >= 2002) & large_f = 0 then smic_brut = smic_brut_small;
MIN_WAGE = GMR1 * gmr1_brut + GMR2 * gmr2_brut + GMR3 * gmr3_brut + GMR4 * gmr4_brut
		+ GMR5 * gmr5_brut + GMR6 * smic_brut;
if GMR6 = 1 then do; annee_rtt = 2008; mois_rtt = 6; end;
MAX_H = (&annee. > annee_rtt) * 152 + (&annee. < annee_rtt) * 169
			+ (&annee. = annee_rtt) * 169 * mois_rtt/12
			+ (&annee. = annee_rtt) * 152 * (12 - mois_rtt)/12;
if GMR6 = 1 then do; MAX_H = 169; end;
MIN_WAGE_H = MIN_WAGE / MAX_H;
	duree = 360;
	s_brut = 12 * MIN_WAGE;
	nbheur = 12 * MAX_H;
	datfin = 360;
	datdeb = 1;
	cpfd   = 'C';
	cpfd_1 = 'C';
	cs     = "65";
run;
%calcot(&annee.);
%rist(&annee.);
data t&annee.; set t&annee.;
	cspa_net = max(cspa - exo_a,0);
	s_supbrut_mw  = s_brut + cspa_net ;
	s_supbrut_mwm = s_supbrut_mw / 12;
	s_supbrut_mwh = s_supbrut_mw / nbheur;
	if missing(typeacc) eq 1 then typeacc = 100;
	if missing(min_an)  eq 1 then min_an  = 100;
run;
data firm_info_sim&annee.; set t&annee.;
	year = &annee.;
run;
proc datasets library = work;
	delete t&annee.;
run;
%mend;
