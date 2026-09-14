* File:    fn_run_regression_family.do
* Purpose: Define one sample-preparation wrapper for every retained DD/DDD OLS/IV family.
* Usage:   Loaded by the regression family drivers.

capture program drop run_regression_family
program define run_regression_family
    syntax, DESIGN(string) ESTIMATOR(string) FOLDER(string) RHS(string) [KEEPFP DROPGMR5 FULLPANELS NOTRAINING MAGNITUDES]

    use "$REGRESSION_BASE", clear

    if "`dropgmr5'" != "" drop if gmr >= 5
    if "`keepfp'" != "" keep if CONT_FP == 1
    sort gsiren year

    global reg_design "`design'"
    global reg_estimator "`estimator'"
    global rhs "`rhs'"
    global abs "gmapetyr gmze1990yr"
    global clus "gmapetmze1990yr"
    global folder "`folder'"

    capture mkdir "$root/output/generated/Output_reg"
    global path "$root/output/generated/Output_reg/`folder'"
    capture mkdir "$path"
    global resultfile "$path/_latex_results.dta"

    global full_panels 0
    if "`fullpanels'" != "" global full_panels 1

    global include_training 1
    if "`notraining'" != "" global include_training 0

    global compute_magnitudes 0
    if "`magnitudes'" != "" global compute_magnitudes 1

    do "$root/code/Programs/6_STATA_ANALYSES/functions/fn_estimate_specifications.do"

    capture confirm file "$resultfile"
    if _rc {
        di as error "Regression result file was not created:"
        di as error "$resultfile"
        exit 601
    }

    macro drop reg_design reg_estimator rhs abs clus folder path resultfile ///
        full_panels include_training compute_magnitudes
end
