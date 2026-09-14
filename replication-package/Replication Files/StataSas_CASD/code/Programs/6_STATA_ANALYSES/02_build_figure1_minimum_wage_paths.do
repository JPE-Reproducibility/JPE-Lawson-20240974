* File:    02_build_figure1_minimum_wage_paths.do
* Purpose: Produce Figure 1 panels A and B: statutory minimum wages and total labor-cost paths by GMR.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set matsize 6000
cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
use "data_lp02_analysis.dta", clear
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_apply_common_restrictions.do"
apply_common_restrictions
drop if gmr == 6
drop if typeacc == 9
egen double ms_supbrut_mwh = mean(s_supbrut_mwh), by(gmr year)
egen byte t = tag(gmr year)
keep if inrange(year, 1995, 2010)
twoway (line ms_supbrut_mwh year if gmr == 1 & t == 1, sort lcolor(blue)) (line ms_supbrut_mwh year if gmr == 2 & t == 1, sort lcolor(red)) (line ms_supbrut_mwh year if gmr == 3 & t == 1, sort lcolor(green)) (line ms_supbrut_mwh year if gmr == 4 & t == 1, sort lcolor(orange)) (line ms_supbrut_mwh year if gmr == 5 & t == 1, sort lcolor(magenta)), ylab(5(1)10, nogrid labsize(vsmall)) graphregion(style(none)) bgcolor(white) xline(1998, lwidth(vthin) lcolor(black)) xline(2000, lwidth(vthin) lcolor(black)) xline(2002, lwidth(vthin) lcolor(black)) xline(2003, lwidth(vthin) lcolor(black)) xline(2006, lwidth(vthin) lcolor(black)) xlab(1995(1)2010, nogrid labsize(vsmall) angle(90)) ytitle("Total labor cost at the minimum wage", size(small) margin(medium)) xtitle("Year", size(vsmall)) legend(order(1 "GMR 1" 2 "GMR 2" 3 "GMR 3" 4 "GMR 4" 5 "GMR 5") cols(5) region(lstyle(none)) size(vsmall) nobox symxsize(small))
graph export "$root\output\generated\Output_graphs\figure_01_panel_b.pdf", replace
cd "$root\output\generated\Output_graphs\CD"
import excel "$root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx", sheet("CLEAN") firstrow clear
keep AN *1
rename *1 *
tempfile firsthalf
save `firsthalf'
import excel "$root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx", sheet("CLEAN") firstrow clear
keep AN *2
rename *2 *
replace AN = AN + 0.5
append using `firsthalf'
sort AN
gen double GMR1_H_def = GMR1_M/169
replace GMR1_H_def = GMR1_H_def*169/152 if AN >= 1998.5
gen double GMR2_H_def = GMR2_M/169
replace GMR2_H_def = GMR2_H_def*169/152 if AN >= 1999.5
gen double GMR3_H = GMR3_M/169
replace GMR3_H = GMR3_H*169/152 if AN >= 2000.5
gen double GMR4_H = GMR4_M/169
replace GMR4_H = GMR4_H*169/152 if AN >= 2001.5
gen double GMR5_H = GMR5_M/169
replace GMR5_H = GMR5_H*169/152 if AN >= 2002.5
gen double GMR1_H = GMR1_H_def
replace GMR1_H = GMR5_H if AN < 2000
gen double GMR2_H = GMR2_H_def
replace GMR2_H = GMR5_H if AN < 2000
gen double SMIC_39_H = SMIC_H
replace SMIC_39_H = 35/39*SMIC_H + 4/39*SMIC_H*1.25 if AN >= 2001
gen double SMIC_39_Hsmall = SMIC_H
replace SMIC_39_Hsmall = 35/39*SMIC_H + 4/39*SMIC_H*1.10 if inrange(AN, 2001, 2005)
replace SMIC_39_Hsmall = 35/39*SMIC_H + 4/39*SMIC_H*1.25 if AN >= 2006
keep if inrange(AN, 1995, 2010)
twoway (line GMR1_H AN, lcolor(blue)) (line GMR2_H AN, lcolor(red)) (line GMR1_H_def AN, lcolor(blue) lpattern(vshortdash)) (line GMR2_H_def AN, lcolor(red) lpattern(vshortdash)) (line GMR3_H AN, lcolor(green)) (line GMR4_H AN, lcolor(orange)) (line GMR5_H AN, lcolor(magenta)) (line SMIC_H AN, lcolor(black) lpattern(dash) lwidth(thick)) (line SMIC_39_H AN, lcolor(black) lpattern(vshortdash)) (line SMIC_39_Hsmall AN, lcolor(black) lpattern(dash)), ylab(5(1)10, nogrid labsize(vsmall)) graphregion(style(none)) bgcolor(white) xline(1998, lwidth(vthin) lcolor(black)) xline(2000, lwidth(vthin) lcolor(black)) xline(2002, lwidth(vthin) lcolor(black)) xline(2003, lwidth(vthin) lcolor(black)) xline(2006, lwidth(vthin) lcolor(black)) xlab(1995(1)2010, nogrid labsize(vsmall) angle(90)) ytitle("Minimum wage:" "net of employer taxes but gross of worker taxes", size(small) margin(medium)) xtitle("Year", size(vsmall)) legend(order(1 "GMR 1" 2 "GMR 2" 5 "GMR 3" 6 "GMR 4" 7 "GMR 5" 8 "No GMR, 35h" 9 "No GMR, 39h, > 20 workers" 10 "No GMR, 39h, {&le} 20 workers") cols(5) region(lstyle(none)) size(vsmall) nobox symxsize(small))
graph export "$root\output\generated\Output_graphs\figure_01_panel_a.pdf", replace
