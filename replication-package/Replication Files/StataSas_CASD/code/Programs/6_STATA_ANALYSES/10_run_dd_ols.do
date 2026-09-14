* File:    10_run_dd_ols.do
* Purpose: Run the retained DD OLS baseline and robustness families through the common engine.
set matsize 6000
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"
run_regression_family, design("DD") estimator("OLS") folder("DD") rhs("c.lns_s3") fullpanels magnitudes
run_regression_family, design("DD") estimator("OLS") folder("DD_FPonly") rhs("c.lns_s3") keepfp notraining
run_regression_family, design("DD") estimator("OLS") folder("DD_noGMR5") rhs("c.lns_s3") dropgmr5
