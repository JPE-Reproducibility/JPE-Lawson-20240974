* File:    13_run_ddd_iv.do
* Purpose: Run the retained DDD IV family through the common engine.
set matsize 6000
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"
run_regression_family, design("DDD") estimator("IV") folder("DDD_IV") rhs("(c.lns_s3#c.sharelowwagehrs02 c.lns_s3 = c.lnmwh_s3#c.sharelowwagehrs02 c.lnmwh_s3) sharelowwagehrs02")
