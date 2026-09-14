* File:    03_build_figure2_labor_cost_distributions.do
* Purpose: Produce Figure 2 panels A-D: labor-cost distributions by hierarchical layer.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
cd "$root\output\generated\Output_graphs\CD"
use "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\data_lp02_analysis.dta", clear
drop if totpostes < 5
drop if year > 2006
gen byte k = inrange(year, 2000, 2006)
egen totk = total(k), by(siren)
drop if totk != 7
drop k totk
drop if gmr == 6
drop if typeacc == 9
foreach v in vaht catotal immocor {
    drop if missing(`v') & year != 2008
    drop if `v' <= 0 & year != 2008
}
keep if year == 2002
keep siren
duplicates drop
tempfile firms
save `firms'
use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\Dworkerlevel_lp022002", clear
ds, has(type numeric string)
foreach var of varlist `r(varlist)' {
    rename `var' `=lower("`var'")'
}
capture drop year lyr siret_acc e_eqtp_ent typeacc mdo e_eqtp_aaide min_an mrtt annee_rtt mois_rtt
merge m:1 siren using `firms', keep(match) nogen
drop if layerlenient == 30
gen double NORM_s_supbrut_h = s_supbrut_h/9.22
drop if missing(NORM_s_supbrut_h)
gen double BIN = .7 if NORM_s_supbrut_h <= .7
forvalues b = 8/50 {
    local upper = `b'/10
    local lower = (`b'-1)/10
    replace BIN = `upper' if NORM_s_supbrut_h > `lower' & NORM_s_supbrut_h <= `upper'
}
gen byte nn = 1
preserve
collapse (sum) nn, by(layer BIN)
bysort layer: egen double total = total(nn)
replace nn = nn/total
drop total
gen byte SAMPLE = 0
tempfile hist_all
save `hist_all'
restore
keep if inrange(layerlenient, 1, 3)
collapse (sum) nn, by(layerlenient layer BIN)
bysort layerlenient layer: egen double total = total(nn)
replace nn = nn/total
drop total
rename layerlenient SAMPLE
append using `hist_all'
drop if missing(BIN) | BIN >= 4
forvalues s = 0/3 {
    local panel "a"
    if `s' == 1 local panel "b"
    if `s' == 2 local panel "c"
    if `s' == 3 local panel "d"
    twoway (line nn BIN if layer == 0 & SAMPLE == `s', lpattern(solid) lcolor(black)) (line nn BIN if layer == 1 & SAMPLE == `s', lpattern(dash) lcolor(black)) (line nn BIN if layer == 2 & SAMPLE == `s', lpattern(vshortdash) lcolor(black)) (line nn BIN if layer == 3 & SAMPLE == `s', lwidth(thick) lpattern(vshortdash) lcolor(black)), ylab(0(.05).15, nogrid) graphregion(style(none)) bgcolor(white) scheme(s1mono) xlab(.5(.5)4) xline(1, lwidth(thick) lcolor(black)) ytitle("Frequency", margin(medium)) xtitle("Total labor cost," "as a multiple of the 2006 minimum labor cost") legend(order(1 "Production workers" 2 "First layer of managers" 3 "Second layer of managers" 4 "Third layer of managers") region(lstyle(none)) nobox)
    graph export "$root\output\generated\Output_graphs\figure_02_panel_`panel'.pdf", replace
}
