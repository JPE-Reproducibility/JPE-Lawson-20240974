* File:    11_run_ddd_ols.do
* Purpose: Run the retained DDD OLS baseline and robustness families through the common engine.
set matsize 6000
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"
run_regression_family, design("DDD") estimator("OLS") folder("DDD") rhs("c.lns_s3##c.sharelowwagehrs02") fullpanels magnitudes
run_regression_family, design("DDD") estimator("OLS") folder("DDD_FPonly") rhs("c.lns_s3##c.sharelowwagehrs02") keepfp notraining
run_regression_family, design("DDD") estimator("OLS") folder("DDD_noGMR5") rhs("c.lns_s3##c.sharelowwagehrs02") dropgmr5
