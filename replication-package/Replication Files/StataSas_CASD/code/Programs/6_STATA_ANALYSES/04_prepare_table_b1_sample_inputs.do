* File:    04_prepare_table_b1_sample_inputs.do
* Purpose: Prepare the FICUS and DADS building blocks needed for the Table B1 sample-construction flow.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set more off
set matsize 6000

local bb "$root\output\generated\Output_data\For_6_STATA_ANALYSES\Building_blocks"
cd "`bb'"

* Explicit work files. Remove leftovers from interrupted ealier run
foreach f in __b1_common_work __ficus_stack_work __ficus_current __dads_stack_work __dads_current {
		capture erase "`bb'/`f'.dta"
 }


* Common restrictions for the two Table B1 estimation samples are applied once.
use "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\data_lp02_analysis.dta", clear
keep if inrange(year,2000,2006)
drop if totpostes < 5
drop if missing(vaht) | missing(catotal) | missing(immocor)
drop if vaht <= 0 | catotal <= 0 | immocor <= 0
bysort siren: egen byte nperiod = total(inrange(year,2000,2006))
keep if nperiod == 7
drop nperiod
drop if typeacc == 9
tempfile b1_common
save "`bb'/__b1_common_work.dta", replace

* Main estimation sample: exclude GMR6 exactly as before.
use "`bb'/__b1_common_work.dta", clear
drop if gmr == 6
sort gsiren year
reghdfe S3.layerlenient c.lns_s3 if year == 2006, absorb(gmapetyr gmze1990yr) cluster(gmapetmze1990yr)
gen byte sample2006 = e(sample)
bysort gsiren: egen byte keepfirm = max(sample2006)
keep if keepfirm
keep siren gsiren year totpostes vaht catotal immocor gmr tothrs
sort siren year
save "`bb'/estimation_sample.dta" , replace

* Alternative flow sample: retain GMR6 but keep the same common restrictions.
use "`bb'/__b1_common_work.dta", clear
sort gsiren year
reghdfe S3.layerlenient c.lns_s3 if year == 2006, absorb(gmapetyr gmze1990yr) cluster(gmapetmze1990yr)
gen byte sample2006 = e(sample)
bysort gsiren: egen byte keepfirm = max(sample2006)
keep if keepfirm
keep siren gsiren year totpostes vaht catotal immocor gmr typeacc tothrs
sort siren year
save "`bb'/estimation_sample_gmr6.dta", replace

* Normalize each FICUS year once and append only after all annual tempfiles are prepared.
forvalues y = 2000/2006 {
    use "$root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_`y'.dta", clear
    ds, has(type numeric string)
    foreach v of varlist `r(varlist)' {
        rename `v' `=lower("`v'")'
    }
    gen year = `y'
    drop if siren == "000000000"
    egen maxcatotal = max(catotal), by(siren year)
    keep if catotal == maxcatotal
    drop maxcatotal
    egen byte one = tag(siren year)
    keep if one
    drop one
    keep siren year effsalm vaht catotal immocor stat_cj
    compress

	if `y' == 2000 {
	save "`bb'/__ficus_stack_work.dta", replace
	}
	else {
	save "`bb'/__ficus_current.dta", replace
	use "`bb'/__ficus_stack_work.dta", clear
	append using "`bb'/__ficus_current.dta"
	save "`bb'/__ficus_stack_work.dta", replace
	}
}



use "`bb'/__ficus_stack_work.dta", clear
sort siren year
save "`bb'/data_FICUS0006.dta", replace

* Build the DADS 2000-2006 stack.
forvalues y = 2000/2006 {

    use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02`y'.dta", clear
    ds, has(type numeric string)
    foreach v of varlist `r(varlist)' {
        rename `v' `=lower("`v'")'
    }
    keep siren totpostes tothrs totsnet totsbrut totssupbrut
    gen year = `y'
    drop if inlist(siren,"000000000",""," ")
    drop if inlist(substr(siren,1,1),"F","P")
    drop if totpostes <= 0 | missing(totpostes)
    duplicates drop siren, force
    compress

	if `y' == 2000 {
	save "`bb'/__dads_stack_work.dta", replace
	}
	else {
	save "`bb'/__dads_current.dta", replace
	use "`bb'/__dads_stack_work.dta", clear
	append using "`bb'/__dads_current.dta"
	save "`bb'/__dads_stack_work.dta", replace
	}
}


use "`bb'/__dads_stack_work.dta", clear
sort siren year
save "`bb'/data_DADS_CLEAN0006.dta", replace

foreach f in __b1_common_work __ficus_stack_work __ficus_current __dads_stack_work __dads_current {
		capture erase "`bb'/`f'.dta"
 }