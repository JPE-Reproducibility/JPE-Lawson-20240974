* Manual stage 13/15 with execution timing.
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

di as text "Starting: Build final analysis data"
local b1_start_stamp "`c(current_date)' `c(current_time)'"
local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
capture noisily do "$root/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/00_build_final_analysis_data.do"
local b1_rc = _rc
local b1_end_stamp "`c(current_date)' `c(current_time)'"
local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
local b1_elapsed = (`b1_t1' - `b1_t0')/1000
local b1_minutes = `b1_elapsed'/60
local b1_hours = `b1_elapsed'/3600
local b1_elapsed_s : display %18.3f `b1_elapsed'
local b1_minutes_s : display %18.3f `b1_minutes'
local b1_hours_s : display %18.6f `b1_hours'
file open __timing using "`timing_dir'/13_STATA_BUILD_FINAL_ANALYSIS_DATA.txt", write replace text
file write __timing "block=Build final analysis data" _n
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

di as result "MANUAL STAGE 13/15 COMPLETED."
