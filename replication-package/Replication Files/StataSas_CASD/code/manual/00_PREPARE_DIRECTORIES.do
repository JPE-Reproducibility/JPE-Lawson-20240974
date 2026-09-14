* Manual setup for the 15-stage SAS/Stata sequence.
version 17.0
clear all
set more off

args package_root casd_data_root
if `"`package_root'"' == "" | `"`casd_data_root'"' == "" {
    di as error "Usage: do 00_PREPARE_DIRECTORIES.do <package-root> <CASD-data-root>"
    exit 198
}
local normalized_root = subinstr(`"`package_root'"', "\", "/", .)
global root `"`normalized_root'"'
global casd_data_root `"`casd_data_root'"'
global keep_intermediate "1"

capture confirm file "$root/README.md"
if _rc {
    di as error "Package root not found: $root"
    exit 601
}

local start_stamp "`c(current_date)' `c(current_time)'"
local t0 = clock("`start_stamp'", "DMY hms")

local dirs "output/logs output/logs/timings output/run_metadata output/generated output/generated/Output_graphs output/generated/Output_graphs/CD output/generated/Output_dstats output/generated/Output_moments output/generated/Output_reg output/generated/Output_sample_construction output/generated/Output_data output/generated/Output_data/For_1_SAS_DADS output/generated/Output_data/For_1_SAS_DADS/RTT output/generated/Output_data/For_1_SAS_DADS/POSTES output/generated/Output_data/For_1_SAS_DADS/SIMUL output/generated/Output_data/For_1_SAS_DADS/GMR output/generated/Output_data/For_1_SAS_DADS/GMR_STATA output/generated/Output_data/For_2_SAS_OTHER output/generated/Output_data/For_2_SAS_OTHER/NOM output/generated/Output_data/For_2_SAS_OTHER/FICUS_STATA output/generated/Output_data/For_2_SAS_OTHER/FP_STATA output/generated/Output_data/For_2_SAS_OTHER/AUBRY output/generated/Output_data/For_2_SAS_OTHER/DADS_93 output/generated/Output_data/For_3_STATA_PREPROCESSING output/generated/Output_data/For_3_STATA_PREPROCESSING/CN output/generated/Output_data/For_3_STATA_PREPROCESSING/CN/CD output/generated/Output_data/For_3_STATA_PREPROCESSING/FP output/generated/Output_data/For_3_STATA_PREPROCESSING/FP/CD output/generated/Output_data/For_3_STATA_PREPROCESSING/AUBRY output/generated/Output_data/For_3_STATA_PREPROCESSING/AUBRY/CD output/generated/Output_data/For_3_STATA_PREPROCESSING/GENERIC output/generated/Output_data/For_4_SAS_ORGANIZATIONS output/generated/Output_data/For_4_SAS_ORGANIZATIONS/SAS output/generated/Output_data/For_4_SAS_ORGANIZATIONS/STATA output/generated/Output_data/For_5_STATA_FINAL_DATA_CONSTRUCTION output/generated/Output_data/For_5_STATA_FINAL_DATA_CONSTRUCTION/TFP output/generated/Output_data/For_5_STATA_FINAL_DATA_CONSTRUCTION/Listings output/generated/Output_data/For_6_STATA_ANALYSES output/generated/Output_data/For_6_STATA_ANALYSES/Building_blocks"
foreach d of local dirs {
    capture mkdir "$root/`d'"
}
foreach d in DDD DD DDD_IV DD_IV DDD_noGMR5 DD_noGMR5 DDD_FPonly DD_FPonly {
    capture mkdir "$root/output/generated/Output_reg/`d'"
}

local end_stamp "`c(current_date)' `c(current_time)'"
local t1 = clock("`end_stamp'", "DMY hms")
local elapsed = (`t1' - `t0')/1000
local minutes = `elapsed'/60
local hours = `elapsed'/3600
local elapsed_s : display %18.3f `elapsed'
local minutes_s : display %18.3f `minutes'
local hours_s : display %18.6f `hours'
file open __timing using "$root/output/logs/timings/00_PREPARE_DIRECTORIES.txt", write replace text
file write __timing "block=00 setup - prepare directories" _n
file write __timing "software=Stata" _n
file write __timing "start=`start_stamp'" _n
file write __timing "end=`end_stamp'" _n
file write __timing "elapsed_seconds=`elapsed_s'" _n
file write __timing "elapsed_minutes=`minutes_s'" _n
file write __timing "elapsed_hours=`hours_s'" _n
file write __timing "stata_return_code=0" _n
file close __timing

di as result "Manual-run directories are ready."
di as text "Timing files: $root/output/logs/timings"
