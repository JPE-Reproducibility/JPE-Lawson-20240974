* File:    00_run_regression_analysis.do
* Purpose: Produce descriptive outputs and run only specifications needed for Tables 1-4, C2-C4, and D1-D11.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
clear matrix
clear mata
set matsize 6000

* The descriptive tables and regressions start from the identical data_lp02 + TFP merge.
* Build it once in this run and expose the tempfile to the descriptive script.
use "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\data_lp02_analysis.dta", clear
sort siren year
merge m:1 siren year using "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\TFP\TFP_lp02_analysis.dta"
drop _merge
tempfile analysis_with_tfp
save `analysis_with_tfp'
global ANALYSIS_WITH_TFP "`analysis_with_tfp'"
capture macro drop GMR2_shock av_SHARE

* Figure 1C and Tables B2-B6/C1; this also computes the two magnitude scalars in memory.
do "$root\code\Programs\6_STATA_ANALYSES\01_build_descriptive_tables.do"

* Assemble and filter the common regression sample once; robustness scripts only apply their additional restriction.
use "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\FP\FP_av_2006", clear
drop DStat_*
sort siren year
joinby siren year using "$ANALYSIS_WITH_TFP", unm(b) update
drop if _merge == 1
drop _merge
sort siren year
gen byte CONT_FP_ = !missing(D_h_fp_tot) & !missing(D_h_fp_L0) & !missing(D_h_fp_L123) & year == 2006
egen byte CONT_FP = max(CONT_FP_), by(gsiren)
drop CONT_FP_
drop if typeacc == 9

do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_apply_common_restrictions.do"
apply_common_restrictions
drop if gmr >= 6
sort gsiren year
tempfile regression_base
save `regression_base'
global REGRESSION_BASE "`regression_base'"

* Retained baseline and robustness families.
do "$root\code\Programs\6_STATA_ANALYSES\11_run_ddd_ols.do"
do "$root\code\Programs\6_STATA_ANALYSES\10_run_dd_ols.do"
do "$root\code\Programs\6_STATA_ANALYSES\13_run_ddd_iv.do"
do "$root\code\Programs\6_STATA_ANALYSES\12_run_dd_iv.do"

* Export the requested result families to combined workbooks.
global outreg "$root\output\generated\Output_reg"
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD" "DDD" "tables_01_04_c02_c04.xlsx"
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD_FPonly" "DDD_FPonly" "tables_d09_d11_training_subsample.xlsx"
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD_noGMR5" "DDD_noGMR5" "tables_d05_d08_no_gmr5.xlsx"
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD_IV" "DDD_IV" "tables_d01_d04_iv.xlsx"

* Regression posting files are internal staging artifacts and can be removed after workbook export.
local keep_intermediate "$keep_intermediate"
if "`keep_intermediate'" == "" {
    local keep_intermediate : environment KEEP_INTERMEDIATE
}
if "`keep_intermediate'" == "" local keep_intermediate "0"
if "`keep_intermediate'" != "1" {
    foreach d in DD DDD DD_FPonly DDD_FPonly DD_noGMR5 DDD_noGMR5 DD_IV DDD_IV {
        capture erase "$root\output\generated\Output_reg\`d'\_latex_results.dta"
    }
}
macro drop REGRESSION_BASE ANALYSIS_WITH_TFP GMR2_shock av_SHARE outreg
