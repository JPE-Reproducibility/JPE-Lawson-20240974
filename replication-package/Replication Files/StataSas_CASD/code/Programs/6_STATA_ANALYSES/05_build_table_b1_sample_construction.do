* File:    05_build_table_b1_sample_construction.do
* Purpose: Combine sample-flow building blocks and export Table B1.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set more off
local outdata "$root/output/generated/Output_data/For_6_STATA_ANALYSES"
local outtable "$root/output/generated/Output_sample_construction"
cd "$root/output/generated/Output_data/For_6_STATA_ANALYSES/Building_blocks"

foreach f in __b1_ficus_all __b1_ficus_cj __b1_ficus_size5 __b1_ficus_cyl __b1_ficus_clean ///
			__b1_BASE __b1_CJ __b1_SIZE5 __b1_CYL __b1_missingVAL ///
			__b1_dads_clean __b1_GROSS __b1_NETT __b1_SUPERNETT {
					capture erase "`f'.dta"
			}


use "data_FICUS0006.dta", clear
egen long gsiren = group(siren)
save "__b1_ficus_all.dta", replace

collapse (count) nb_firms_total=gsiren (sum) vaht_total=vaht effsalm_total=effsalm, by(year)
sort year
save "__b1_BASE.dta", replace


use "__b1_ficus_all.dta", clear
keep if substr(stat_cj,1,1) == "5"
save "__b1_ficus_cj.dta", replace

collapse (count) nb_firms_cj=gsiren (sum) vaht_cj=vaht effsalm_cj=effsalm, by(year)
sort year
save "__b1_CJ.dta", replace



use "__b1_ficus_cj.dta", clear
drop if effsalm < 5
save "__b1_ficus_size5.dta", replace

collapse (count) nb_firms_size5=gsiren (sum) vaht_size5=vaht effsalm_size5=effsalm, by(year)
sort year
save "__b1_SIZE5.dta", replace


use "__b1_ficus_size5.dta", clear
bysort gsiren: egen byte nperiod = total(inrange(year,2000,2006))
keep if nperiod == 7
drop nperiod
save "__b1_ficus_cyl.dta", replace

collapse (count) nb_firms_cyl=gsiren (sum) vaht_cyl=vaht effsalm_cyl=effsalm, by(year)
sort year
save "__b1_CYL.dta", replace


use "__b1_ficus_cyl.dta", clear
drop if missing(vaht) | missing(catotal) | missing(immocor)
drop if vaht <= 0 | catotal <= 0 | immocor <= 0
save "__b1_ficus_clean.dta", replace

collapse (count) nb_firms_missingVA=gsiren (sum) vaht_missingVA=vaht effsalm_missingVA=effsalm, by(year)
sort year
save "__b1_missingVAL.dta", replace


use "data_DADS_CLEAN0006.dta", clear
save "__b1_dads_clean.dta", replace


use "__b1_ficus_cyl.dta", clear
sort siren year
merge 1:1 siren year using "__b1_dads_clean.dta", keep(match) nogen
bysort gsiren: egen byte nperiod = total(inrange(year,2000,2006))
keep if nperiod == 7
drop nperiod
collapse (count) nb_firms_GROSS=gsiren (sum) vaht_GROSS=vaht nb_postes_GROSS=totpostes nb_hours_GROSS=tothrs, by(year)
sort year
save "__b1_GROSS.dta", replace


use "estimation_sample_gmr6.dta", clear
collapse (count) nb_firms_NETT=gsiren (sum) vaht_NETT=vaht nb_postes_NETT=totpostes nb_hours_NETT=tothrs, by(year)
sort year
save "__b1_NETT.dta", replace


use "estimation_sample.dta", clear
collapse (count) nb_firms_SUPERNETT=gsiren (sum) vaht_SUPERNETT=vaht nb_postes_SUPERNETT=totpostes nb_hours_SUPERNETT=tothrs, by(year)
sort year
save "__b1_SUPERNETT.dta", replace



use "__b1_BASE.dta", clear
merge 1:1 year using "__b1_CJ.dta", nogen
merge 1:1 year using "__b1_SIZE5.dta", nogen
merge 1:1 year using "__b1_CYL.dta", nogen
merge 1:1 year using "__b1_missingVAL.dta", nogen
merge 1:1 year using "__b1_GROSS.dta", nogen
merge 1:1 year using "__b1_NETT.dta", nogen
merge 1:1 year using "__b1_SUPERNETT.dta", nogen
foreach suff in GROSS NETT SUPERNETT {
    gen effsalm_`suff' = nb_postes_`suff'
}
foreach suff in cyl missingVA GROSS NETT SUPERNETT {
    gen sh_nb_firms_`suff' = nb_firms_`suff'/nb_firms_cyl
    gen sh_effsalm_`suff' = effsalm_`suff'/effsalm_cyl
    gen sh_vaht_`suff' = vaht_`suff'/vaht_cyl
}
drop effsalm_GROSS effsalm_NETT effsalm_SUPERNETT

* Add the arithmetic-mean row reported as ``Average'' in manuscript Table B1.
* Each output column is averaged over the seven annual observations 2000-2006
* The special year value 9999 is converted to the string ``Average'' immediately
* before export so that the workbook reproduces the published row label exactly.
ds year, not
local b1_meanvars `r(varlist)'
preserve
    collapse (mean) `b1_meanvars'
    gen year = 9999
    tempfile __b1_average
    save `__b1_average', replace
restore
append using `__b1_average'
sort year

count if inrange(year,2000,2006)
assert r(N) == 7
count if year == 9999
assert r(N) == 1

* Use the same row labels as the manuscript in the exported workbook.
tostring year, gen(__b1_year_label) format(%4.0f)
replace __b1_year_label = "Average" if year == 9999
drop year
rename __b1_year_label year
order year

* Remove work files before changing directory for the final export.
foreach f in __b1_ficus_all __b1_ficus_cj __b1_ficus_size5 __b1_ficus_cyl __b1_ficus_clean ///
                 __b1_BASE __b1_CJ __b1_SIZE5 __b1_CYL __b1_missingVAL ///
                 __b1_dads_clean __b1_GROSS __b1_NETT __b1_SUPERNETT {
    capture erase "`f'.dta"
}

capture mkdir "$root/output/generated/Output_sample_construction"
cd "$root/output/generated/Output_sample_construction"
capture erase "table_b01.xlsx"
capture noisily export excel using "table_b01.xlsx", sheet("FINAL") firstrow(variables) replace
local export_rc = _rc
if `export_rc' {
    di as error "Table B1 Excel file could not be written."
    di as error "Close any open copy of table_b01.xlsx and verify write access to:"
    di as error "`outtable'"
    exit `export_rc'
}

capture confirm file "table_b01.xlsx"
if _rc {
    di as error "Table B1 Excel file was not created in `outtable'."
    exit 603
}
