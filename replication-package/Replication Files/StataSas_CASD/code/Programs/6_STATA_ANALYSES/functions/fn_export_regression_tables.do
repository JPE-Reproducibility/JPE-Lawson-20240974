* File:    fn_export_regression_tables.do
* Purpose: Combine stored estimates into the Excel sheets mapped to the paper tables.
* Usage:   Run through the stage or package driver unless the README says otherwise.

version 14
args ROOTPATH DDSUB DDDSUB OUTFILE
if `"`ROOTPATH'"' == "" exit 198
if `"`DDSUB'"' == "" local DDSUB "DD"
if `"`DDDSUB'"' == "" local DDDSUB "DDD"
if `"`OUTFILE'"' == "" local OUTFILE "tables_01_04_c02_c04.xlsx"
local ddfile `"`ROOTPATH'/`DDSUB'/_latex_results.dta"'
local dddfile `"`ROOTPATH'/`DDDSUB'/_latex_results.dta"'
local xlsxout `"`ROOTPATH'/`OUTFILE'"'
capture confirm file `"`ddfile'"'
if _rc {
    di as error "Missing DD regression result file:"
    di as error `"`ddfile'"'
    exit 601
}

capture confirm file `"`dddfile'"'
if _rc {
    di as error "Missing DDD regression result file:"
    di as error `"`dddfile'"'
    exit 601
}
local allresults `"`ROOTPATH'/__regression_export_work.dta"'
capture erase `"`allresults'"'
use `"`ddfile'"', clear
append using `"`dddfile'"'
gen double tstat = abs(b/se)
gen double tstatmag = abs(mag/mag_se)
gen double tstatmag2 = abs(mag2/mag2_se)
gen str3 stars = ""
replace stars = "*" if tstat >= 1.645 & tstat < .
replace stars = "**" if tstat >= 1.960 & tstat < .
replace stars = "***" if tstat >= 2.576 & tstat < .
gen str30 btxt = string(b, "%9.3f") + stars
gen str30 setxt = "(" + string(se, "%9.3f") + ")"
gen str30 ntxt = string(N, "%12.0fc")
gen str30 meantxt = string(depmean, "%9.3f")
gen str30 magtxt = string(mag, "%9.3f")
gen str30 mag2txt = string(mag2, "%9.3f")
replace btxt = "" if missing(b)
replace setxt = "" if missing(se)
replace ntxt = "" if missing(N)
replace meantxt = "" if missing(depmean)
replace magtxt = "NS" if tstatmag < 1.645 & !missing(tstatmag)
replace mag2txt = "NS" if tstatmag2 < 1.645 & !missing(tstatmag2)
save `"`allresults'"', replace
levelsof table, local(tables)
putexcel set `"`xlsxout'"', replace
local letters "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
local prefix ""
if strpos("`DDSUB'", "IV") | strpos("`DDDSUB'", "IV") local prefix "IV-"
foreach T of local tables {
    use `"`allresults'"', clear
    keep if table == `"`T'"'
    quietly summarize col
    local maxcol = r(max)
    putexcel set `"`xlsxout'"', sheet(`"`T'"') modify
    putexcel A1 = (`"`T'"')
    forvalues c = 1/`maxcol' {
        local XL : word `=`c'+1' of `letters'
        putexcel `XL'2 = (`"(`c')"')
    }
    putexcel A3 = ("Dependent variable")
    forvalues c = 1/`maxcol' {
        local XL : word `=`c'+1' of `letters'
        local cell ""
        if "`T'" == "TABLE3" {
            if `c' == 1 local cell "All firms"
            if `c' == 2 local cell "1-layer firms"
            if `c' == 3 local cell "2-layer firms"
            if `c' == 4 local cell "3-layer firms"
        }
        else {
            capture levelsof depvar if panel == "A" & col == `c', local(cell) clean
            if `"`cell'"' == "" capture levelsof depvar if col == `c', local(cell) clean
            local cell : word 1 of `cell'
        }
        putexcel `XL'3 = (`"`cell'"')
    }
    local row 5
    levelsof panel, local(panels)
    foreach P of local panels {
        preserve
        keep if panel == `"`P'"'
        if `row' > 5 local ++row
        local ptitle = panel_title[1]
        putexcel A`row' = (`"`ptitle'"')
        local ++row
        putexcel A`row' = ("Observations")
        forvalues c = 1/`maxcol' {
            local XL : word `=`c'+1' of `letters'
            local cell ""
            capture levelsof ntxt if model == "DD" & col == `c', local(cell) clean
            if `"`cell'"' == "" capture levelsof ntxt if col == `c', local(cell) clean
            local cell : word 1 of `cell'
            putexcel `XL'`row' = (`"`cell'"')
        }
        local ++row
        foreach M in DD DDD {
            quietly count if model == "`M'"
            if r(N) > 0 {
                local rowlab "`prefix'`M': Delta ln lab. cost at GMR"
                if "`M'" == "DDD" local rowlab "`prefix'DDD: Delta ln lab. cost at GMR x Share MW workers in 2002"
                putexcel A`row' = (`"`rowlab'"')
                forvalues c = 1/`maxcol' {
                    local XL : word `=`c'+1' of `letters'
                    local cell ""
                    capture levelsof btxt if model == "`M'" & col == `c', local(cell) clean
                    local cell : word 1 of `cell'
                    putexcel `XL'`row' = (`"`cell'"')
                }
                local ++row
                putexcel A`row' = (" ")
                forvalues c = 1/`maxcol' {
                    local XL : word `=`c'+1' of `letters'
                    local cell ""
                    capture levelsof setxt if model == "`M'" & col == `c', local(cell) clean
                    local cell : word 1 of `cell'
                    putexcel `XL'`row' = (`"`cell'"')
                }
                local ++row
            }
        }
        quietly count if model == "DD" & !missing(mag)
        local hasmag = r(N) > 0
        if `hasmag' {
            putexcel A`row' = ("DD implied effect")
            forvalues c = 1/`maxcol' {
                local XL : word `=`c'+1' of `letters'
                local cell ""
                capture levelsof magtxt if model == "DD" & col == `c', local(cell) clean
                local cell : word 1 of `cell'
                putexcel `XL'`row' = (`"`cell'"')
            }
            local ++row
            putexcel A`row' = ("DDD exposure effect")
            forvalues c = 1/`maxcol' {
                local XL : word `=`c'+1' of `letters'
                local cell ""
                capture levelsof magtxt if model == "DDD" & col == `c', local(cell) clean
                local cell : word 1 of `cell'
                putexcel `XL'`row' = (`"`cell'"')
            }
            local ++row
            putexcel A`row' = ("DDD total effect")
            forvalues c = 1/`maxcol' {
                local XL : word `=`c'+1' of `letters'
                local cell ""
                capture levelsof mag2txt if model == "DDD" & col == `c', local(cell) clean
                local cell : word 1 of `cell'
                putexcel `XL'`row' = (`"`cell'"')
            }
            local ++row
            putexcel A`row' = ("Mean of dependent variable")
            forvalues c = 1/`maxcol' {
                local XL : word `=`c'+1' of `letters'
                local cell ""
                capture levelsof meantxt if model == "DD" & col == `c', local(cell) clean
                if `"`cell'"' == "" capture levelsof meantxt if col == `c', local(cell) clean
                local cell : word 1 of `cell'
                putexcel `XL'`row' = (`"`cell'"')
            }
            local ++row
        }
        local row = `row' + 1
        restore
    }
}

capture erase `"`allresults'"'
