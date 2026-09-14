* Manual stage 11/15 with execution timing.
version 17.0
clear all
set more off
if "$root" == "" {
    di as error "Run code/manual/00_PREPARE_DIRECTORIES.do first in this Stata session."
    exit 198
}
local timing_dir "$root/output/logs/timings"
capture mkdir "`timing_dir'"

local stage_start_stamp "`c(current_date)' `c(current_time)'"
local stage_t0 = clock("`stage_start_stamp'", "DMY hms")

di as text "Starting: Prepare training 2483"
local b1_start_stamp "`c(current_date)' `c(current_time)'"
local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
capture noisily do "$root/code/Programs/3_STATA_PREPROCESSING_ORGA/01_prepare_training_2483.do"
local b1_rc = _rc
local b1_end_stamp "`c(current_date)' `c(current_time)'"
local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
local b1_elapsed = (`b1_t1' - `b1_t0')/1000
local b1_minutes = `b1_elapsed'/60
local b1_hours = `b1_elapsed'/3600
local b1_elapsed_s : display %18.3f `b1_elapsed'
local b1_minutes_s : display %18.3f `b1_minutes'
local b1_hours_s : display %18.6f `b1_hours'
file open __timing using "`timing_dir'/11_01_PREPARE_TRAINING_2483.txt", write replace text
file write __timing "block=Prepare training 2483" _n
file write __timing "software=Stata" _n
file write __timing "start=`b1_start_stamp'" _n
file write __timing "end=`b1_end_stamp'" _n
file write __timing "elapsed_seconds=`b1_elapsed_s'" _n
file write __timing "elapsed_minutes=`b1_minutes_s'" _n
file write __timing "elapsed_hours=`b1_hours_s'" _n
file write __timing "stata_return_code=`b1_rc'" _n
file close __timing
if `b1_rc' != 0 {
    di as error "Block failed with Stata return code `b1_rc'. Timing file was still written."
    exit `b1_rc'
}

di as text "Starting: Prepare national accounts deflators"
local b2_start_stamp "`c(current_date)' `c(current_time)'"
local b2_t0 = clock("`b2_start_stamp'", "DMY hms")
capture noisily do "$root/code/Programs/3_STATA_PREPROCESSING_ORGA/02_prepare_national_accounts_deflators.do"
local b2_rc = _rc
local b2_end_stamp "`c(current_date)' `c(current_time)'"
local b2_t1 = clock("`b2_end_stamp'", "DMY hms")
local b2_elapsed = (`b2_t1' - `b2_t0')/1000
local b2_minutes = `b2_elapsed'/60
local b2_hours = `b2_elapsed'/3600
local b2_elapsed_s : display %18.3f `b2_elapsed'
local b2_minutes_s : display %18.3f `b2_minutes'
local b2_hours_s : display %18.6f `b2_hours'
file open __timing using "`timing_dir'/11_02_PREPARE_NATIONAL_ACCOUNTS_DEFLATORS.txt", write replace text
file write __timing "block=Prepare national accounts deflators" _n
file write __timing "software=Stata" _n
file write __timing "start=`b2_start_stamp'" _n
file write __timing "end=`b2_end_stamp'" _n
file write __timing "elapsed_seconds=`b2_elapsed_s'" _n
file write __timing "elapsed_minutes=`b2_minutes_s'" _n
file write __timing "elapsed_hours=`b2_hours_s'" _n
file write __timing "stata_return_code=`b2_rc'" _n
file close __timing
if `b2_rc' != 0 {
    di as error "Block failed with Stata return code `b2_rc'. Timing file was still written."
    exit `b2_rc'
}

di as text "Starting: Build policy parameter grid"
local b3_start_stamp "`c(current_date)' `c(current_time)'"
local b3_t0 = clock("`b3_start_stamp'", "DMY hms")
capture noisily do "$root/code/Programs/3_STATA_PREPROCESSING_ORGA/04_build_policy_parameter_grid.do"
local b3_rc = _rc
local b3_end_stamp "`c(current_date)' `c(current_time)'"
local b3_t1 = clock("`b3_end_stamp'", "DMY hms")
local b3_elapsed = (`b3_t1' - `b3_t0')/1000
local b3_minutes = `b3_elapsed'/60
local b3_hours = `b3_elapsed'/3600
local b3_elapsed_s : display %18.3f `b3_elapsed'
local b3_minutes_s : display %18.3f `b3_minutes'
local b3_hours_s : display %18.6f `b3_hours'
file open __timing using "`timing_dir'/11_03_BUILD_POLICY_PARAMETER_GRID.txt", write replace text
file write __timing "block=Build policy parameter grid" _n
file write __timing "software=Stata" _n
file write __timing "start=`b3_start_stamp'" _n
file write __timing "end=`b3_end_stamp'" _n
file write __timing "elapsed_seconds=`b3_elapsed_s'" _n
file write __timing "elapsed_minutes=`b3_minutes_s'" _n
file write __timing "elapsed_hours=`b3_hours_s'" _n
file write __timing "stata_return_code=`b3_rc'" _n
file close __timing
if `b3_rc' != 0 {
    di as error "Block failed with Stata return code `b3_rc'. Timing file was still written."
    exit `b3_rc'
}

local stage_end_stamp "`c(current_date)' `c(current_time)'"
local stage_t1 = clock("`stage_end_stamp'", "DMY hms")
local stage_elapsed = (`stage_t1' - `stage_t0')/1000
local stage_minutes = `stage_elapsed'/60
local stage_hours = `stage_elapsed'/3600
local stage_elapsed_s : display %18.3f `stage_elapsed'
local stage_minutes_s : display %18.3f `stage_minutes'
local stage_hours_s : display %18.6f `stage_hours'
file open __stage using "`timing_dir'/11_TOTAL_STATA_PREPROCESSING.txt", write replace text
file write __stage "stage=11/15 - Stata preprocessing" _n
file write __stage "software=Stata" _n
file write __stage "start=`stage_start_stamp'" _n
file write __stage "end=`stage_end_stamp'" _n
file write __stage "elapsed_seconds=`stage_elapsed_s'" _n
file write __stage "elapsed_minutes=`stage_minutes_s'" _n
file write __stage "elapsed_hours=`stage_hours_s'" _n
file write __stage "stata_return_code=0" _n
file close __stage

di as result "MANUAL STAGE 11/15 COMPLETED."
