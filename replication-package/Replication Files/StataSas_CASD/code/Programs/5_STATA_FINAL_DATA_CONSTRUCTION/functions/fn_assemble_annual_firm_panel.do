* File:    fn_assemble_annual_firm_panel.do
* Purpose: Append and harmonize the annual firm files used by the retained lp02 analysis sample.
* Usage:   Run through 00_build_final_analysis_data.do. Temporary Stata stacks are managed outside package storage.

set matsize 6000
cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
capture program drop prog_datacons0
program define prog_datacons0


	
	local keep_intermediate "$keep_intermediate"
	if "`keep_intermediate'" == "" {
		local keep_intermediate : environment KEEP_INTERMEDIATE
	}
	
	if "`keep_intermediate'" == "" {
		local keep_intermediate "0"
	}
	
	
	    tempfile firms dads_stack current

    * Normalize each annual SAS organization export once, then append the normalized
    * tempfiles in the submitted year order. This avoids rewriting a growing stack.
    forvalues year = 1996/2008 {
        use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02`year'.dta", clear
        ds, has(type numeric string)
        foreach var of varlist `r(varlist)' {
            rename `var' `=lower("`var'")'
        }
        capture drop a17 a38
        drop totsnet*
        compress
        save `current', replace
		
		if `year' == 1996 {
			use `current', clear
			save `dads_stack', replace
		}
		else{
			use `dads_stack', clear
			append using `current'
			save `dads_stack', replace
		}

        * Years outside 2000-2006 have no later consumer in Table B1.
        if "`keep_intermediate'" != "1" & (`year' < 2000 | `year' > 2006) {
            capture erase "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02`year'.dta"
        }
    }
	
	use `dads_stack', clear
	


    sort siren
    compress

    * Preserve the submitted layer recoding exactly before the only retained save.
    drop if layerlenient == 30
    replace layerlenient = layerlenient + 1 if layerlenient < 30
    save "data_lp02", replace

    * Restrict FICUS to firms present in the organization panel before appending years.
    keep siren
    duplicates drop
    sort siren
    save `firms', replace
	
	
	tempfile ficus_stack current_ficus

forvalues year = 1996/2007 {

    use "$root/output/generated/Output_data/For_2_SAS_OTHER/FICUS_STATA/FICUS_UL_`year'.dta", clear

    ds, has(type numeric string)
    foreach var of varlist `r(varlist)' {
        rename `var' `=lower("`var'")'
    }

    gen year = `year'

    drop if siren == "000000000"

    egen t = max(catotal), by(siren year)
    drop if t != catotal
    drop t

    egen t = tag(siren year)
    drop if t != 1
    drop t

    sort siren
    merge m:1 siren using `firms'
    drop if _merge != 3
    drop _merge

    compress

    * Store this processed year temporarily.
    save `current_ficus', replace

    * Append sequentially in exactly the historical year order.
    if `year' == 1996 {
        use `current_ficus', clear
        save `ficus_stack', replace
    }
    else {
        use `ficus_stack', clear
        append using `current_ficus'
        save `ficus_stack', replace
    }

    * Optional cleanup of source files.
    if "`keep_intermediate'" != "1" & (`year' < 2000 | `year' > 2006) {
        capture erase "$root/output/generated/Output_data/For_2_SAS_OTHER/FICUS_STATA/FICUS_UL_`year'.dta"
    }
}

use `ficus_stack', clear
sort siren year
	/*****/

    use "data_lp02", clear
    sort siren year
    merge 1:1 siren year using `ficus_stack'
    drop if _merge == 2
    drop _merge
    compress
    save "data_lp02", replace
    clear
end
