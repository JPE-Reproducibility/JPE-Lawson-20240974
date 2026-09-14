* File:    12_run_dd_iv.do
* Purpose: Run the retained DD IV family through the common engine.
set matsize 6000
do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"
run_regression_family, design("DD") estimator("IV") folder("DD_IV") rhs("(c.lns_s3 = c.lnmwh_s3)")
