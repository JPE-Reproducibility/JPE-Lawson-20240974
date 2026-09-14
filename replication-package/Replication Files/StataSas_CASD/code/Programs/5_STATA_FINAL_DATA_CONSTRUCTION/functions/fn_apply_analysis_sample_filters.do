* File:    fn_apply_analysis_sample_filters.do
* Purpose: Apply the paper's firm-level sample restrictions and construct analysis variables.
* Usage:   Run through the stage or package driver unless the README says otherwise.

set matsize 6000
cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"

* The retained replication path always uses the no-apprentice, largest-plant-2002 panel.
* Keep the submitted modal-category propagation rules in one helper; FILL1995 reproduces
* the one extra 1995 forward-fill used historically for max_ze1990_final only.
capture program drop finalize_modal_characteristic
program define finalize_modal_characteristic
    syntax varname, Generate(name) [FILL1995]
    gen `generate' = `varlist'
    replace `generate' = "" if year < 2002
    replace `generate' = "" if year == 2008
    egen t = total(1), by(`generate' siren)
    replace t = 0 if year < 2002 | year == 2008
    egen max_t = max(t), by(siren)
    replace `generate' = "" if t != max_t
    egen k = tag(`generate' siren)
    egen kk = total(k), by(siren)
    replace `generate' = "" if kk >= 2 & year != 2003
    drop k kk
    egen k = tag(`generate' siren)
    egen kk = total(k), by(siren)
    replace `generate' = `varlist' if kk == 0 & year == 2002
    drop k kk
    sort siren year
    by siren: replace `generate' = `generate'[_n-1] if missing(`generate') == 1
    foreach y in 2005 2004 2003 2002 2001 2000 1999 1998 1997 1996 {
        by siren: replace `generate' = `generate'[_n+1] if missing(`generate') == 1 & year == `y'
    }
    if "`fill1995'" != "" {
        by siren: replace `generate' = `generate'[_n+1] if missing(`generate') == 1 & year == 1995
    }
    by siren: replace `generate' = `generate'[_n-1] if missing(`generate') == 1
    drop t max_t
end

capture program drop prog_datacons2
program define prog_datacons2
use "data_lp02", clear
drop if totpostesout != 0
drop if totpostes0   != 0
drop if totpostes1   != 0
drop if missing(apet)             == 1
drop if layerlenient              >= 5
drop if missing(layerlenient)     == 1
drop if missing(max_ze1990)       == 1
drop if missing(vaht)    == 1 & year != 2008
drop if missing(catotal) == 1 & year != 2008
drop if missing(immocor) == 1 & year != 2008
drop if vaht     <= 0 & year != 2008
drop if catotal  <= 0 & year != 2008
drop if immocor  <= 0 & year != 2008
drop if annee_rtt == 2003
drop if annee_rtt == 2004
drop if annee_rtt == 2005
drop if annee_rtt == 2006
drop if annee_rtt == 2007
gen k = 0
replace k = 1 if year == 2003
replace k = 1 if year == 2006
egen totk = total(k), by(siren)
drop if totk != 2
drop totk
drop k
gen k = 0
replace k = 1 if year == 2002
egen totk = total(k), by(siren)
drop if totk != 1
drop totk
drop k
finalize_modal_characteristic max_apet, generate(max_apet_final)
finalize_modal_characteristic max_ze1990, generate(max_ze1990_final) fill1995
local listv = "totpostes totssupbrut tothrs"
foreach zz of local listv{
replace `zz'cs15 = 0 if missing(`zz'cs15) == 1
replace `zz'cs14 = 0 if missing(`zz'cs14) == 1
replace `zz'cs13 = 0 if missing(`zz'cs13) == 1
replace `zz'cs12 = 0 if missing(`zz'cs12) == 1
gen double `zz'l1 = `zz'cs15
gen double `zz'l2 = `zz'cs14
gen double `zz'l3 = `zz'cs13
gen double `zz'l4 = `zz'cs12
}
local listv = "totpostes totssupbrut tothrs"
foreach zz of local listv{
replace `zz'l1 = `zz'l2 if totlyr == 10
replace `zz'l2 = 0      if totlyr == 10
replace `zz'l1 = `zz'l3 if totlyr == 100
replace `zz'l3 = 0      if totlyr == 100
replace `zz'l2 = `zz'l3 if totlyr == 101
replace `zz'l3 = 0      if totlyr == 101
replace `zz'l1 = `zz'l2 if totlyr == 110
replace `zz'l2 = `zz'l3 if totlyr == 110
replace `zz'l3 = 0      if totlyr == 110
replace `zz'l1 = `zz'l4 if totlyr == 1000
replace `zz'l4 = 0      if totlyr == 1000
replace `zz'l2 = `zz'l4 if totlyr == 1001
replace `zz'l4 = 0      if totlyr == 1001
replace `zz'l1 = `zz'l2 if totlyr == 1010
replace `zz'l2 = `zz'l4 if totlyr == 1010
replace `zz'l4 = 0      if totlyr == 1010
replace `zz'l3 = `zz'l4 if totlyr == 1011
replace `zz'l4 = 0      if totlyr == 1011
replace `zz'l1 = `zz'l3 if totlyr == 1100
replace `zz'l2 = `zz'l4 if totlyr == 1100
replace `zz'l3 = 0      if totlyr == 1100
replace `zz'l4 = 0      if totlyr == 1100
replace `zz'l2 = `zz'l3 if totlyr == 1101
replace `zz'l3 = `zz'l4 if totlyr == 1101
replace `zz'l4 = 0      if totlyr == 1101
replace `zz'l1 = `zz'l2 if totlyr == 1110
replace `zz'l2 = `zz'l3 if totlyr == 1110
replace `zz'l3 = `zz'l4 if totlyr == 1110
replace `zz'l4 = 0      if totlyr == 1110
}

* Construct only variables consumed by the requested tables, figures, TFP routine, and calibration moments.
compress
gen lnmwh = ln(min_wage)
gen lnsupmwh = ln(s_supbrut_mwh)

gen lntotpostes   = ln(totpostesl1+totpostesl2+totpostesl3+totpostesl4)
gen lntothrs      = ln(tothrsl1+tothrsl2+tothrsl3+tothrsl4)
forvalues l = 1/4 {
    gen lntotpostesl`l' = ln(totpostesl`l')
    gen lntothrsl`l' = ln(tothrsl`l')
}

gen avsupbrut = (totssupbrutl1+totssupbrutl2+totssupbrutl3+totssupbrutl4) / (totpostesl1+totpostesl2+totpostesl3+totpostesl4)
gen avsupbruthrs = (totssupbrutl1+totssupbrutl2+totssupbrutl3+totssupbrutl4) / (tothrsl1+tothrsl2+tothrsl3+tothrsl4)
gen lnavsupbruthrs = ln((totssupbrutl1+totssupbrutl2+totssupbrutl3+totssupbrutl4) / (tothrsl1+tothrsl2+tothrsl3+tothrsl4))
forvalues l = 1/4 {
    gen avsupbruthrsl`l' = totssupbrutl`l'/tothrsl`l'
    gen lnavsupbruthrsl`l' = ln(totssupbrutl`l'/tothrsl`l')
}

gen lnva = ln(vaht)
gen lnvapw = ln(vaht/totpostes)
gen lnvaphrs = ln(vaht/tothrs)
gen lnsales = ln(catotal)
gen lnkpl = ln(immocor/totpostes)
gen lnkphrs = ln(immocor/tothrs)

forvalues l = 1/4 {
    gen byte layer`l' = layerlenient == `l'
}

* Exposure is the submitted 2002 hours-based measure, propagated to every firm-year exactly as before.
gen sharelowwagehrs = hrs_below_mw2006/tothrs
gen sharelowwagehrs02 = sharelowwagehrs
replace sharelowwagehrs02 = -100000 if year != 2002
egen t = max(sharelowwagehrs02), by(siren)
replace sharelowwagehrs02 = t
drop t sharelowwagehrs

gen max_apet_final1 = substr(max_apet_final,1,1)
egen gsiren = group(siren)
egen gmapetyr = group(max_apet_final year)
egen gmze1990yr = group(max_ze1990_final year)
egen gmapet1mze1990yr = group(max_apet_final1 max_ze1990_final year)
egen gmapetmze1990yr = group(max_apet_final max_ze1990_final year)

tsset gsiren year
gen lns_s3 = S3.lnsupmwh
gen lnmwh_s3 = S3.lnmwh
gen incl = S3.layerlenient > 0 & !missing(S3.layerlenient)
gen decl = S3.layerlenient < 0 & !missing(S3.layerlenient)
gen samel = S3.layerlenient == 0 & !missing(S3.layerlenient)
gen layer34 = layer3 + layer4 >= 1
gen layer234 = layer2 + layer34 >= 1

gen inputs = achat_mp + achat_mar + achat_serv
gen lninputspl = ln(inputs/totpostes)
gen lninputsphrs = ln(inputs/tothrs)
gen lninvcorppl = ln(invcorp/totpostes)
gen lninvcorpphrs = ln(invcorp/tothrs)

save "data_lp02_analysis", replace
clear
end
