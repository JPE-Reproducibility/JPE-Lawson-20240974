* File:    fn_estimate_specifications.do
* Purpose: Single specification engine for retained DD/DDD OLS/IV regressions.
* Usage:   Called by fn_run_regression_family.do after the sample and globals are set.

local baseif "year == 2006"

* Write the regression staging dataset directly to its final path.
tempname RESULTS
capture erase "$resultfile"
postfile `RESULTS' str8 model str32 table str1 panel str80 panel_title int col str80 depvar double b se N depmean mag mag_se mag2 mag2_se using "$resultfile", replace
global RESULTS "`RESULTS'"
capture program drop run_reg
program define run_reg
    syntax anything [if], TABLE(string) PANEL(string) PTITLE(string) COL(integer) [MAG]
    if "$reg_estimator" == "OLS" {
        quietly reghdfe `anything' $rhs `if', absorb($abs) cluster($clus)
    }
    else if "$reg_estimator" == "IV" {
        quietly ivreghdfe `anything' $rhs `if', absorb($abs) cluster($clus)
    }
    else {
        di as error "Unknown regression estimator: $reg_estimator"
        exit 198
    }
    local depvar = e(depvar)
    local depmean .
    local magnitude .
    local magnitude_se .
    local magnitude2 .
    local magnitude2_se .
    if "`mag'" != "" & $compute_magnitudes == 1 {
        quietly summarize `depvar' if e(sample)
        local depmean = r(mean)
        if "$reg_design" == "DD" {
            quietly lincom (`= $GMR2_shock')*(lns_s3)
            local magnitude = r(estimate)
            local magnitude_se = r(se)
        }
        else if "$reg_design" == "DDD" {
            quietly lincom (`= $GMR2_shock')*(`= $av_SHARE')*(c.lns_s3#c.sharelowwagehrs02)
            local magnitude = r(estimate)
            local magnitude_se = r(se)
            quietly lincom (`= $GMR2_shock')*(lns_s3 + (`= $av_SHARE')*(c.lns_s3#c.sharelowwagehrs02))
            local magnitude2 = r(estimate)
            local magnitude2_se = r(se)
        }
    }
    if "$reg_design" == "DD" {
        post $RESULTS ("DD") ("`table'") ("`panel'") ("`ptitle'") (`col') ("`depvar'") (_b[lns_s3]) (_se[lns_s3]) (e(N)) (`depmean') (`magnitude') (`magnitude_se') (`magnitude2') (`magnitude2_se')
    }
    else if "$reg_design" == "DDD" {
        post $RESULTS ("DDD") ("`table'") ("`panel'") ("`ptitle'") (`col') ("`depvar'") (_b[c.lns_s3#c.sharelowwagehrs02]) (_se[c.lns_s3#c.sharelowwagehrs02]) (e(N)) (`depmean') (`magnitude') (`magnitude_se') (`magnitude2') (`magnitude2_se')
    }
    else {
        di as error "Unknown regression design: $reg_design"
        exit 198
    }
end
local y_A "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2 S3.lnavsupbruthrsl3 S3.lnavsupbruthrsl4"
local y_B "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2"
local y_C "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2 S3.lnavsupbruthrsl3"
local y_D "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2 S3.lnavsupbruthrsl3 S3.lnavsupbruthrsl4"
local cond_A "`baseif'"
local cond_B "`baseif' & !missing(S3.lnavsupbruthrsl2) & missing(S3.lnavsupbruthrsl3)"
local cond_C "`baseif' & !missing(S3.lnavsupbruthrsl3) & missing(S3.lnavsupbruthrsl4)"
local cond_D "`baseif' & !missing(S3.lnavsupbruthrsl4)"
local groups "A"
if $full_panels == 1 local groups "A B C D"
foreach group of local groups {
    local ptitle "(`group')"
    if "`group'" == "A" local ptitle "(A) All firms"
    if "`group'" == "B" local ptitle "(B) 1-layer firms"
    if "`group'" == "C" local ptitle "(C) 2-layer firms"
    if "`group'" == "D" local ptitle "(D) 3-layer firms"
    local magopt ""
    if "`group'" == "A" local magopt "mag"
    local col 1
    foreach y of local y_`group' {
        run_reg `y' if `cond_`group'', table("TABLE1") panel("`group'") ptitle("`ptitle'") col(`col') `magopt'
        local ++col
    }
}
local y_A "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2 S3.lntotpostesl3 S3.lntotpostesl4"
local y_B "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2"
local y_C "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2 S3.lntotpostesl3"
local y_D "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2 S3.lntotpostesl3 S3.lntotpostesl4"
local cond_A "`baseif'"
local cond_B "`baseif' & !missing(S3.lntotpostesl2) & missing(S3.lntotpostesl3)"
local cond_C "`baseif' & !missing(S3.lntotpostesl3) & missing(S3.lntotpostesl4)"
local cond_D "`baseif' & !missing(S3.lntotpostesl4)"
foreach group of local groups {
    local ptitle "(`group')"
    if "`group'" == "A" local ptitle "(A) All firms"
    if "`group'" == "B" local ptitle "(B) 1-layer firms"
    if "`group'" == "C" local ptitle "(C) 2-layer firms"
    if "`group'" == "D" local ptitle "(D) 3-layer firms"
    local magopt ""
    if "`group'" == "A" local magopt "mag"
    local col 1
    foreach y of local y_`group' {
        run_reg `y' if `cond_`group'', table("TABLE2A_jobs") panel("`group'") ptitle("`ptitle'") col(`col') `magopt'
        local ++col
    }
}
local y_A "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2 S3.lntothrsl3 S3.lntothrsl4"
local y_B "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2"
local y_C "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2 S3.lntothrsl3"
local y_D "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2 S3.lntothrsl3 S3.lntothrsl4"
local cond_A "`baseif'"
local cond_B "`baseif' & !missing(S3.lntothrsl2) & missing(S3.lntothrsl3)"
local cond_C "`baseif' & !missing(S3.lntothrsl3) & missing(S3.lntothrsl4)"
local cond_D "`baseif' & !missing(S3.lntothrsl4)"
foreach group of local groups {
    local ptitle "(`group')"
    if "`group'" == "A" local ptitle "(A) All firms"
    if "`group'" == "B" local ptitle "(B) 1-layer firms"
    if "`group'" == "C" local ptitle "(C) 2-layer firms"
    if "`group'" == "D" local ptitle "(D) 3-layer firms"
    local magopt ""
    if "`group'" == "A" local magopt "mag"
    local col 1
    foreach y of local y_`group' {
        run_reg `y' if `cond_`group'', table("TABLE2A_hours") panel("`group'") ptitle("`ptitle'") col(`col') `magopt'
        local ++col
    }
}
local col 1
foreach y in S3.layerlenient incl decl samel S3.layer4 S3.layer34 S3.layer234 {
    run_reg `y' if `baseif', table("TABLE2B") panel("A") ptitle("(B) Number of hierarchical layers") col(`col') mag
    local ++col
}
if $include_training == 1 {
    local cond_A "`baseif' & CONT_FP == 1"
    local cond_B "`baseif' & CONT_FP == 1 & !missing(S3.lntothrsl2) & missing(S3.lntothrsl3)"
    local cond_C "`baseif' & CONT_FP == 1 & !missing(S3.lntothrsl3) & missing(S3.lntothrsl4)"
    local cond_D "`baseif' & CONT_FP == 1 & !missing(S3.lntothrsl4)"
    local col 1
    foreach group in A B C D {
        run_reg D_h_fp_L0 if `cond_`group'', table("TABLE3") panel("A") ptitle("(A) Training at layer L0") col(`col') mag
        local ++col
    }
    local col 1
    foreach group in A B C D {
        run_reg D_h_fp_L123 if `cond_`group'', table("TABLE3") panel("B") ptitle("(B) Training at layers L1 to L3") col(`col') mag
        local ++col
    }
}
local col 1
foreach y in S3.lntotpostes S3.lntothrs S3.lnva S3.lnsales {
    run_reg `y' if `baseif', table("TABLE4A") panel("A") ptitle("(A) Firm size") col(`col') mag
    local ++col
}
local col 1
foreach y in S3.lninputspl S3.lnkpl S3.lninvcorppl S3.lninputsphrs S3.lnkphrs S3.lninvcorpphrs {
    run_reg `y' if `baseif', table("TABLE4B") panel("A") ptitle("(B) Production factors beyond labor") col(`col') mag
    local ++col
}
local col 1
foreach y in S3.lnvapw S3.lnvaphrs S3.l_PROD_FS_postes S3.l_PROD_FS_hours S3.l_PROD_OP_W S3.l_PROD_OP_H {
    run_reg `y' if `baseif', table("TABLE4C") panel("A") ptitle("(C) Productivity") col(`col') mag
    local ++col
}
postclose `RESULTS'

capture confirm file "$resultfile"
if _rc {
    di as error "Regression staging file was not created:"
    di as error "$resultfile"
    exit 601
}

macro drop RESULTS
