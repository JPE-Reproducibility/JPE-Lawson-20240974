* Manual stage 15/15 with execution timing.
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

di as text "Starting: Prepare Table B1 sample inputs"
local b1_start_stamp "`c(current_date)' `c(current_time)'"
local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
capture noisily do "$root/code/Programs/6_STATA_ANALYSES/04_prepare_table_b1_sample_inputs.do"
local b1_rc = _rc
local b1_end_stamp "`c(current_date)' `c(current_time)'"
local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
local b1_elapsed = (`b1_t1' - `b1_t0')/1000
local b1_minutes = `b1_elapsed'/60
local b1_hours = `b1_elapsed'/3600
local b1_elapsed_s : display %18.3f `b1_elapsed'
local b1_minutes_s : display %18.3f `b1_minutes'
local b1_hours_s : display %18.6f `b1_hours'
file open __timing using "`timing_dir'/15_01_PREPARE_TABLE_B1_SAMPLE_INPUTS.txt", write replace text
file write __timing "block=Prepare Table B1 sample inputs" _n
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

di as text "Starting: Build Table B1 sample construction"
local b2_start_stamp "`c(current_date)' `c(current_time)'"
local b2_t0 = clock("`b2_start_stamp'", "DMY hms")
capture noisily do "$root/code/Programs/6_STATA_ANALYSES/05_build_table_b1_sample_construction.do"
local b2_rc = _rc
local b2_end_stamp "`c(current_date)' `c(current_time)'"
local b2_t1 = clock("`b2_end_stamp'", "DMY hms")
local b2_elapsed = (`b2_t1' - `b2_t0')/1000
local b2_minutes = `b2_elapsed'/60
local b2_hours = `b2_elapsed'/3600
local b2_elapsed_s : display %18.3f `b2_elapsed'
local b2_minutes_s : display %18.3f `b2_minutes'
local b2_hours_s : display %18.6f `b2_hours'
file open __timing using "`timing_dir'/15_02_BUILD_TABLE_B1_SAMPLE_CONSTRUCTION.txt", write replace text
file write __timing "block=Build Table B1 sample construction" _n
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

local stage_end_stamp "`c(current_date)' `c(current_time)'"
local stage_t1 = clock("`stage_end_stamp'", "DMY hms")
local stage_elapsed = (`stage_t1' - `stage_t0')/1000
local stage_minutes = `stage_elapsed'/60
local stage_hours = `stage_elapsed'/3600
local stage_elapsed_s : display %18.3f `stage_elapsed'
local stage_minutes_s : display %18.3f `stage_minutes'
local stage_hours_s : display %18.6f `stage_hours'
file open __stage using "`timing_dir'/15_TOTAL_STATA_TABLE_B1.txt", write replace text
file write __stage "stage=15/15 - Table B1 sample construction" _n
file write __stage "software=Stata" _n
file write __stage "start=`stage_start_stamp'" _n
file write __stage "end=`stage_end_stamp'" _n
file write __stage "elapsed_seconds=`stage_elapsed_s'" _n
file write __stage "elapsed_minutes=`stage_minutes_s'" _n
file write __stage "elapsed_hours=`stage_hours_s'" _n
file write __stage "stata_return_code=0" _n
file close __stage

di as result "MANUAL STAGE 15/15 COMPLETED."
di as result "Manual replication sequence completed. Compare output/generated with the manuscript using output/EXHIBIT_OUTPUT_MAP.csv."
