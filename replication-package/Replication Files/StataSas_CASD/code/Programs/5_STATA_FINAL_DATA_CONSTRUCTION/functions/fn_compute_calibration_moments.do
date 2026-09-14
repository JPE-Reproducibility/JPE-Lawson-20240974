* File:    fn_compute_calibration_moments.do
* Purpose: Compute only the empirical calibration outputs used for the Data column of Table 5.
* Usage:   Run through 00_build_final_analysis_data.do. The retained formulas match the submitted baseline calibration.

set matsize 6000
cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"

* Normalize the 1993 entry indicator once for the baseline calibration merge.
use "$root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta", clear
ds, has(type numeric string)
foreach var of varlist `r(varlist)' {
    rename `var' `=lower("`var'")'
}
save "$root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta", replace

capture program drop prog_moments_calibration1
program define prog_moments_calibration1
    tempfile calibration_data

    use "data_lp02_analysis", clear
    sort siren year
    merge m:1 siren using "$root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta"
    drop if _merge == 2
    gen D_1993 = _merge == 3
    drop _merge nbsal_93

    * Reproduce the baseline GMR sample used for the calibration targets.
    sort gsiren year
    drop if gmr == 6
    drop if typeacc == 9
    drop if totpostes < 5
    foreach v in vaht catotal immocor {
        drop if missing(`v') == 1 & year != 2008
        drop if `v' <= 0 & year != 2008
    }
    drop if year > 2007
    drop if year < 2000
    gen k = inrange(year, 2000, 2006)
    egen totk = total(k), by(siren)
    drop if totk != 7
    drop totk k

    reghdfe S3.layerlenient S3.lnsupmw if year == 2006, absorb(gmapetyr gmze1990yr) cluster(gmapet1mze1990yr)
    gen k = e(sample)
    egen sample_firms = total(k), by(siren)
    replace sample_firms = 1 if sample_firms >= 1
    drop k
    drop if sample_firms == 0
    save `calibration_data', replace

    * Main 2006 moments. Only statistics exported in the submitted baseline file are computed.
    use `calibration_data', clear
    egen totsample_firms = total(sample_firms), by(year)
    egen totlayer3 = total(layer3), by(year)
    egen totlayer4 = total(layer4), by(year)
    egen totpostes_l3 = total(totpostes * layer3), by(year)
    egen totpostes_l4 = total(totpostes * layer4), by(year)
    egen tothrs_l3 = total(tothrs * layer3), by(year)
    egen tothrs_l4 = total(tothrs * layer4), by(year)
    gen share_l3 = totlayer3/totsample_firms
    gen share_l4 = totlayer4/totsample_firms
    replace totpostes_l3 = totpostes_l3/totlayer3
    replace totpostes_l4 = totpostes_l4/totlayer4
    replace tothrs_l3 = tothrs_l3/(totlayer3 * 1607)
    replace tothrs_l4 = tothrs_l4/(totlayer4 * 1607)

    forvalues l = 1/4 {
        gen shhrsl`l' = tothrsl`l'/(tothrsl1+tothrsl2+tothrsl3+tothrsl4)
        gen shpostesl`l' = totpostesl`l'/(totpostesl1+totpostesl2+totpostesl3+totpostesl4)
    }
    egen MACRO_totpostes = total(totpostes), by(year)
    egen MACRO_tothrs = total(tothrs), by(year)

    forvalues l = 1/4 {
        gen tp`l' = totpostes * shhrsl`l'
        egen totpostes_layer`l' = total(tp`l'), by(year)
        gen shtotpostes_layer`l' = totpostes_layer`l'/MACRO_totpostes
    }
    drop tp1 tp2 tp3 tp4

    forvalues l = 1/4 {
        gen tp`l' = totpostes * shpostesl`l'
        egen totpostes_layer`l'_clean = total(tp`l'), by(year)
        gen shtotpostes_layer`l'_clean = totpostes_layer`l'_clean/MACRO_totpostes
    }
    drop tp1 tp2 tp3 tp4

    forvalues l = 1/4 {
        gen tp`l' = tothrs * shhrsl`l'
        egen tothrs_layer`l'_clean = total(tp`l'), by(year)
        gen shtothrs_layer`l'_clean = tothrs_layer`l'_clean/MACRO_tothrs
    }

    estpost tabstat totsample_firms share_l3 share_l4 avsupbruthrs avsupbrut totpostes tothrs totpostes_l3 totpostes_l4 tothrs_l3 tothrs_l4 shtotpostes_layer1 shtotpostes_layer2 shtotpostes_layer3 shtotpostes_layer4 shtotpostes_layer1_clean shtotpostes_layer2_clean shtotpostes_layer3_clean shtotpostes_layer4_clean shtothrs_layer1_clean shtothrs_layer2_clean shtothrs_layer3_clean shtothrs_layer4_clean if year == 2006 & sample_firms == 1, statistics(count mean sd) columns(statistics) listwise
    esttab using "$root\output\generated\Output_moments\table_05_data_moments.csv", replace csv main(mean) aux(sd) nostar unstack noobs label addnote("Main data moments for 2006")

    * Entry moments from the 1993 DADS indicator.
    use `calibration_data', clear
    gen k = 0
    replace k = 1 if D_1993 == 0
    drop if year != 2006
    egen totnewfirms = total(k)
    egen totfirms = total(1)
    gen sharenewfirms = totnewfirms/totfirms
    egen double totnewfirms_postes = total(totpostes*k)
    egen double totfirms_postes = total(totpostes)
    gen sharenewfirms_postes = totnewfirms_postes/totfirms_postes
    egen double totnewfirms_hrs = total(tothrs*k)
    egen double totfirms_hrs = total(tothrs)
    gen sharenewfirms_hrs = totnewfirms_hrs/totfirms_hrs
    estpost tabstat sharenewfirms sharenewfirms_postes sharenewfirms_hrs if year == 2006, statistics(count mean sd) columns(statistics) listwise
    esttab using "$root\output\generated\Output_moments\table_05_data_moments.csv", append csv main(mean) aux(sd) nostar unstack noobs label addnote("New Firms From 1993")

    * Minimum-wage-bin moments. The submitted formulas are intentionally preserved verbatim, including the supmw totals.
    use `calibration_data', clear
    drop if year != 2006
    save `calibration_data', replace
    use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\calibration_wagebins_lp022006.dta", clear
    ds, has(type numeric string)
    foreach var of varlist `r(varlist)' {
        rename `var' `=lower("`var'")'
    }
    drop if year != 2006
    sort siren
    merge 1:1 siren using `calibration_data'
    drop if _merge != 3
    drop _merge

    local list1 "postes_smicpb postes_smic05l postes_smic06 postes_smic07 postes_smic08 postes_smic09 postes_smic10 postes_smic11a postes_smic11b postes_smic12 postes_smic13 postes_smic14 postes_smic15 postes_smic16 postes_smic17 postes_smic18 postes_smic19 postes_smic20 postes_smic20p postes_supmwpb postes_supmw05l postes_supmw06 postes_supmw07 postes_supmw08 postes_supmw09 postes_supmw10 postes_supmw11a postes_supmw11b postes_supmw12 postes_supmw13 postes_supmw14 postes_supmw15 postes_supmw16 postes_supmw17 postes_supmw18 postes_supmw19 postes_supmw20 postes_supmw20p hrs_smicpb hrs_smic05l hrs_smic06 hrs_smic07 hrs_smic08 hrs_smic09 hrs_smic10 hrs_smic11a hrs_smic11b hrs_smic12 hrs_smic13 hrs_smic14 hrs_smic15 hrs_smic16 hrs_smic17 hrs_smic18 hrs_smic19 hrs_smic20 hrs_smic20p hrs_supmwpb hrs_supmw05l hrs_supmw06 hrs_supmw07 hrs_supmw08 hrs_supmw09 hrs_supmw10 hrs_supmw11a hrs_supmw11b hrs_supmw12 hrs_supmw13 hrs_supmw14 hrs_supmw15 hrs_supmw16 hrs_supmw17 hrs_supmw18 hrs_supmw19 hrs_supmw20 hrs_supmw20p totpostes tothrs"
    foreach v of local list1 {
        replace `v' = 0 if missing(`v') == 1
    }

    gen double cum_postes_mw11 = postes_smic05l+postes_smic06+postes_smic07+postes_smic08+postes_smic09+postes_smic10+postes_smic11a
    gen double cum_hrs_mw11 = hrs_smic05l+hrs_smic06+hrs_smic07+hrs_smic08+hrs_smic09+hrs_smic10+hrs_smic11a
    gen double cum_postes_supmw11 = postes_supmw05l+postes_supmw06+postes_supmw07+postes_supmw08+postes_supmw09+postes_supmw10+postes_supmw11a
    gen double cum_hrs_supmw11 = hrs_supmw05l+hrs_supmw06+hrs_supmw07+hrs_supmw08+hrs_supmw09+hrs_supmw10+hrs_supmw11a
    egen double totfirms = total(1)
    egen double tottotpostes = total(totpostes)
    egen double tottothrs = total(tothrs)
    egen double totcum_postes_mw11 = total(cum_postes_mw11)
    egen double totcum_hrs_mw11 = total(cum_hrs_mw11)
    egen double totcum_postes_supmw11 = total(cum_postes_mw11)
    egen double totcum_hrs_supmw11 = total(cum_hrs_mw11)
    gen share_postes_mw11 = totcum_postes_mw11/tottotpostes
    gen share_hrs_mw11 = totcum_hrs_mw11/tottothrs
    gen share_postes_supmw11 = totcum_postes_supmw11/tottotpostes
    gen share_hrs_supmw11 = totcum_hrs_supmw11/tottothrs

    gen double cum_postes_mw11_v2 = postes_smic10+postes_smic11a+postes_smic11b+postes_smic12
    gen double cum_hrs_mw11_v2 = hrs_smic10+hrs_smic11a+hrs_smic11b+hrs_smic12
    gen double cum_postes_supmw11_v2 = postes_supmw10+postes_supmw11a+postes_supmw11b+postes_supmw12
    gen double cum_hrs_supmw11_v2 = hrs_supmw10+hrs_supmw11a+hrs_supmw11b+hrs_supmw12
    egen double totcum_postes_mw11_v2 = total(cum_postes_mw11_v2)
    egen double totcum_hrs_mw11_v2 = total(cum_hrs_mw11_v2)
    egen double totcum_postes_supmw11_v2 = total(cum_postes_mw11_v2)
    egen double totcum_hrs_supmw11_v2 = total(cum_hrs_mw11_v2)
    gen share_postes_mw11_v2 = totcum_postes_mw11_v2/tottotpostes
    gen share_hrs_mw11_v2 = totcum_hrs_mw11_v2/tottothrs
    gen share_postes_supmw11_v2 = totcum_postes_supmw11_v2/tottotpostes
    gen share_hrs_supmw11_v2 = totcum_hrs_supmw11_v2/tottothrs

    estpost tabstat totfirms share_postes_mw11 share_hrs_mw11 share_postes_supmw11 share_hrs_supmw11 share_postes_mw11_v2 share_hrs_mw11_v2 share_postes_supmw11_v2 share_hrs_supmw11_v2 if year == 2006, statistics(count mean sd) columns(statistics) listwise
    esttab using "$root\output\generated\Output_moments\table_05_minimum_wage_moments.csv", replace csv main(mean) aux(sd) nostar unstack noobs label addnote("Share of workers earning up to 1.05 of the MW in Year 2006 - *v2 is based on Avouyi-Dovi Fougere and Gautier (Restat, 2013)")
    clear
end
