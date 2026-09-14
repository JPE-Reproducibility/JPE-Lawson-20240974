* File:    01_build_descriptive_tables.do
* Purpose: Produce Figure 1C and descriptive Tables B2-B6 and C1 from the final analysis data.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set matsize 6000

* Reuse the identical data_lp02 + TFP merge prepared by the regression driver when available.
* The fallback keeps this file executable on its own.
local shared_tfp_base = 0
if "$ANALYSIS_WITH_TFP" != "" {
    capture confirm file "$ANALYSIS_WITH_TFP"
    if !_rc {
        use "$ANALYSIS_WITH_TFP", clear
        local shared_tfp_base = 1
    }
}
if `shared_tfp_base' == 0 {
    cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
    use "data_lp02_analysis.dta", clear
    sort siren year
    merge m:1 siren year using "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\TFP\TFP_lp02_analysis.dta"
    drop _merge
}
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_apply_common_restrictions.do"
apply_common_restrictions
drop if gmr == 6
drop if typeacc == 9
sort siren year
tempfile base
save `base'
use "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\FP\FP_av_2006", clear
keep siren DStat_*
gen year = 2002
sort siren year
joinby siren year using `base', unm(b) update
drop if _merge == 1
drop _merge
sort gsiren year
reghdfe S3.layerlenient c.lns_s3 if year == 2006, absorb(gmapetyr gmze1990yr) cluster(gmapetmze1990yr)
gen byte TO_KEEP = e(sample)
egen byte TO_KEEP2 = max(TO_KEEP), by(gsiren)
keep if TO_KEEP2 == 1
drop TO_KEEP TO_KEEP2
forvalues n = 1/4 {
    gen double shhrsl`n' = tothrsl`n'/(tothrsl1+tothrsl2+tothrsl3+tothrsl4)
    gen double shpostesl`n' = totpostesl`n'/(totpostesl1+totpostesl2+totpostesl3+totpostesl4)
}
gen double vaphrs = vaht/tothrs
replace vaht = vaht/1000
gen double tothrs_fte = tothrs/1607
gen double PROD_FS_hours = exp(l_PROD_FS_hours)
gen double PROD_OP_H = exp(l_PROD_OP_H)
replace layerlenient = layerlenient - 1
gen byte D_h_fp_tot = DStat_h_fp_tot > 0 if !missing(DStat_h_fp_tot)
gen byte D_h_fp_L0 = DStat_h_fp_L0 > 0 if !missing(DStat_h_fp_L0)
gen byte D_h_fp_L123 = DStat_h_fp_L123 > 0 if !missing(DStat_h_fp_L123)
gen byte flow = 1 if sharelowwagehrs02 >= 0.00 & sharelowwagehrs02 < 0.25
replace flow = 2 if sharelowwagehrs02 >= 0.25 & sharelowwagehrs02 < 0.50
replace flow = 3 if sharelowwagehrs02 >= 0.50 & sharelowwagehrs02 < 0.75
replace flow = 4 if sharelowwagehrs02 >= 0.75 & sharelowwagehrs02 <= 1.00
tabulate gmr, gen(GMR)
tabulate flow, gen(FLOW)

* Tables B2-B3 and Figure 1C. Flat manuscript-facing outputs use CSV; multi-sheet outputs use XLSX.
local common "Observations totpostes tothrs_fte vaht vaphrs PROD_FS_hours PROD_OP_H layerlenient layer1 layer2 layer3 layer4 shpostesl1 shpostesl2 shpostesl3 shpostesl4 shhrsl1 shhrsl2 shhrsl3 shhrsl4 s_supbrut_mwh min_wage_h"
local tail "sharelowwagehrs02 avsupbruthrs avsupbruthrsl1 avsupbruthrsl2 avsupbruthrsl3 avsupbruthrsl4 D_h_fp_tot D_h_fp_L0 D_h_fp_L123"
capture drop Observations
egen Observations = total(1), by(gmr year)
estpost tabstat `common' FLOW1 FLOW2 FLOW3 FLOW4 `tail' if year == 2002, by(gmr) statistics(mean sd) columns(statistics)
esttab using "$root\output\generated\Output_dstats\table_b02.csv", replace csv main(mean) aux(sd) nostar unstack noobs nonote label
capture drop Observations
egen Observations = total(1), by(flow year)
estpost tabstat `common' GMR1 GMR2 GMR3 GMR4 GMR5 `tail' if year == 2002, by(flow) statistics(mean sd) columns(statistics)
esttab using "$root\output\generated\Output_dstats\table_b03.csv", replace csv main(mean) aux(sd) nostar unstack noobs nonote label
gen double lns_s3_real = lns_s3 - 0.056
estpost tabstat lns_s3 lns_s3_real if year == 2006, by(gmr) statistics(mean sd) columns(statistics)
esttab using "$root\output\generated\Output_dstats\figure_01_panel_c.csv", replace csv main(mean) aux(sd) nostar unstack noobs nonote label
drop lns_s3_real

* Industry composition tables B4-B6. Each flat table is exported as its own CSV file.
tabout max_apet_final1 gmr if year == 2002 using "$root\output\generated\Output_dstats\table_b04.csv", c(col) style(csv) replace
tabout max_apet_final1 flow if year == 2002 using "$root\output\generated\Output_dstats\table_b05.csv", c(col) style(csv) replace
tabout max_apet_final1 flow if year == 2002 using "$root\output\generated\Output_dstats\table_b06.csv", c(row) style(csv) replace

* Store the same regression-magnitude scalars in memory; no one-observation staging file is needed.
quietly summarize lns_s3 if year == 2006 & gmr == 2
global GMR2_shock = r(mean) - 0.056
quietly summarize sharelowwagehrs02 if year == 2006
global av_SHARE = r(mean)

* Table C1: hierarchy conditions in jobs, hours, and hourly labor costs.
preserve
keep if year == 2003 & inrange(layerlenient, 1, 3)
forvalues l = 1/4 {
    gen double m_avsupbruthrsl`l' = -avsupbruthrsl`l'
}
local varlist "tothrs totpostes m_avsupbruthrs"
local first = 1
foreach x of local varlist {
    forvalues k = 1/3 {
        local kp1 = `k' + 1
        gen byte cond`k'`kp1'_`x' = (`x'l`k' >= `x'l`kp1') if !missing(`x'l`k', `x'l`kp1')
    }
    gen byte condALL_`x' = .
    replace condALL_`x' = cond12_`x' if layerlenient == 1
    replace condALL_`x' = cond12_`x' == 1 & cond23_`x' == 1 if layerlenient == 2
    replace condALL_`x' = cond12_`x' == 1 & cond23_`x' == 1 & cond34_`x' == 1 if layerlenient == 3
    if `first' {
        putexcel set "$root\output\generated\Output_dstats\table_c01.xlsx", replace sheet("`x'")
        local first = 0
    }
    else putexcel set "$root\output\generated\Output_dstats\table_c01.xlsx", modify sheet("`x'")
    putexcel A1 = "Condition tested:" B1 = "for all l" C1 = "h0 >= h1" D1 = "h1 >= h2" E1 = "h2 >= h3"
    putexcel A2 = "1-layer firms" A3 = "2-layer firms" A4 = "3-layer firms"
    forvalues L = 1/3 {
        local row = `L' + 1
        foreach item in "ALL B" "12 C" "23 D" "34 E" {
            tokenize "`item'"
            local c "`1'"
            local col "`2'"
            capture confirm variable cond`c'_`x'
            if !_rc {
                quietly summarize cond`c'_`x' if layerlenient == `L', meanonly
                if r(N) > 0 putexcel `col'`row' = (r(mean)), nformat(number_d3)
            }
        }
    }
}
restore
