* File:    00_build_final_analysis_data.do
* Purpose: Assemble annual firm data, apply the estimation sample, estimate TFP, and write the retained calibration outputs.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set matsize 6000
do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_assemble_annual_firm_panel.do"
do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_apply_analysis_sample_filters.do"
do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_estimate_tfp.do"
do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_compute_calibration_moments.do"
prog_datacons0
prog_datacons2
prog_TFPest
prog_moments_calibration1
