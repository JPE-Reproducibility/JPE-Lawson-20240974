* File:    02_prepare_national_accounts_deflators.do
* Purpose: Prepare the national-accounts deflators and industry mappings used by the TFP routine.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set more off
global OUT "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\CN"
global IN  "$root\data\public\original\For_3_STATA_PREPROCESSING"

tempfile map_a38 prod_ids prod_long cap_map cap_ids cap_long classif bridge02

* Output-price deflators.
import excel "${IN}\NOMENCLATURES_INSEE\table_NAF2-NA.xls", sheet("All_levels") firstrow clear
keep DIV_A38 DIV_A88
duplicates drop
rename DIV_A88 NIV2
sort DIV_A38
save `map_a38', replace

import delimited "${IN}\PRODUCTION_2019_11_05_CNBRANCHES\caract.csv", delimiter(";") encoding(utf8) clear
gen operation = substr(opérationsdanslacomptabiliténati,1,3)
keep if operation == "P1 " | operation == "P2 "
gen NOM = substr(activité,1,3)
keep if NOM == "A38"
gen DIV_A38 = substr(activité,5,2)
sort DIV_A38
joinby DIV_A38 using `map_a38', unm(b)
keep if _merge == 3
drop _merge NOM activité
keep if substr(prixderéférence,1,6) == "Indice"
keep idbank NIV2 operation
destring idbank, replace
sort idbank
save `prod_ids', replace

import delimited "${IN}\PRODUCTION_2019_11_05_CNBRANCHES\valeurs_annuelles.csv", delimiter(";") encoding(utf8) clear
forvalues x = 4/73 {
    local yyyy = 1945 + `x'
    destring v`x', replace force
    rename v`x' pyyyy_p2014_`yyyy'
}
drop if missing(idbank)
keep idbank pyyyy*
sort idbank
joinby idbank using `prod_ids', unm(b)
keep if _merge == 3
drop _merge idbank
reshape long pyyyy_p2014_, i(NIV2 operation) j(year)
rename pyyyy_p2014 pyyyy_p2014
replace operation = "PROD" if operation == "P1 "
replace operation = "INT" if operation == "P2 "
sort NIV2 operation year
save `prod_long', replace
preserve
keep if year == 2010
drop year
rename pyyyy_p2014 p2010_p2014
sort NIV2 operation
save `prod_ids', replace
restore
joinby NIV2 operation using `prod_ids', unm(b)
gen pyyyy_p2010_ = pyyyy_p2014 / p2010_p2014
keep NIV2 operation year pyyyy_p2010
reshape wide pyyyy_p2010, i(NIV2 year) j(operation) string
save "${OUT}\CN_PRICES_PROD_NIV2_base2010", replace

* Capital-price deflators.
import excel "${IN}\NOMENCLATURES_INSEE\table_NAF2-NA.xls", sheet("All_levels") firstrow clear
keep DIV_A38 DIV_A88
duplicates drop
rename DIV_A88 NIV2
rename DIV_A38 INDUSTRY
sort INDUSTRY
save `cap_map', replace

import delimited "${IN}\CAPITAL_2019_11_05_CNBRANCHES\caract.csv", delimiter(";") encoding(utf8) clear
gen NOM = substr(activité,1,3)
keep if NOM == "A38"
gen INDUSTRY = substr(activité,5,2)
joinby INDUSTRY using `cap_map', unm(b)
keep if _merge == 3
drop _merge INDUSTRY
gen PRICE_C = unité == "euros courants"
keep idbank NIV2 PRICE_C
destring idbank, replace
sort idbank
save `cap_ids', replace

import delimited "${IN}\CAPITAL_2019_11_05_CNBRANCHES\valeurs_annuelles.csv", delimiter(";") encoding(utf8) clear
forvalues x = 4/44 {
    local yyyy = 1974 + `x'
    destring v`x', replace force
    rename v`x' year`yyyy'_P
}
drop if missing(idbank)
keep idbank year*
sort idbank
joinby idbank using `cap_ids', unm(b)
keep if _merge == 3
drop _merge
reshape wide year*, i(idbank NIV2) j(PRICE_C)
sort NIV2
collapse (sum) year*, by(NIV2)
forvalues x = 4/44 {
    local yyyy = 1974 + `x'
    gen pyyyy_p2014_`yyyy' = year`yyyy'_P1 / year`yyyy'_P0
}
keep NIV2 pyyyy_p2014_*
reshape long pyyyy_p2014_, i(NIV2) j(year)
rename pyyyy_p2014 pyyyy_p2014
sort NIV2
save `cap_long', replace
preserve
keep if year == 2010
drop year
rename pyyyy_p2014 p2010_p2014
sort NIV2
save `cap_ids', replace
restore
joinby NIV2 using `cap_ids', unm(b)
gen pyyyy_p2010 = pyyyy_p2014 / p2010_p2014
keep NIV2 year pyyyy_p2010
save "${OUT}\CN_PRICES_CAP_NIV2_base2010", replace

* Bridge the historical industry classification to the national-accounts duration file.
use APENREV1 APENREV2 using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2008", clear
rename APENREV1 apenrev1
rename APENREV2 apenrev2
drop if missing(apenrev1) | missing(apenrev2)
gen nb = -1
sort apenrev1 apenrev2
collapse (sum) nb, by(apenrev1 apenrev2)
sort apenrev2 nb apenrev1
keep if _n == 1 | apenrev2[_n-1] != apenrev2
drop nb
sort apenrev2
save `classif', replace

use SIREN APE using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2002", clear
rename SIREN siren
rename APE ape
drop if missing(siren) | siren == "000000000"
sort siren
save `bridge02', replace

use SIREN APE using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2003", clear
rename SIREN siren
rename APE ape
drop if missing(siren) | siren == "000000000"
rename ape apenrev1
sort siren
joinby siren using `bridge02', unm(b)
keep if _merge == 3
drop _merge
drop if missing(apenrev1) | missing(ape)
gen nb = -1
sort apenrev1 ape
collapse (sum) nb, by(apenrev1 ape)
sort apenrev1 nb ape
keep if _n == 1 | apenrev1[_n-1] != apenrev1
drop nb
sort apenrev1
joinby apenrev1 using `classif', unm(b)
drop _merge
drop if missing(ape) | missing(apenrev2)
sort ape
save `classif', replace

use APE N114 using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2002", clear
rename APE ape
rename N114 n114
duplicates drop
sort ape
joinby ape using `classif', unm(b)
keep if _merge == 3
gen NIV2 = substr(apenrev2,1,2)
rename n114 N114
gen nb = 1
sort NIV2 N114
collapse (sum) nb, by(NIV2 N114)
sort NIV2 nb N114
keep if _n == 1 | NIV2[_n-1] != NIV2
sort N114
save `classif', replace

import excel "${IN}\NOMENCLATURES_NAF\NES_N114_old.xls", sheet("Feuil1") firstrow clear
sort N114
joinby N114 using `classif', unm(b)
keep if _merge == 3
gen N36_b = substr(NES114,1,1)
keep N36 NIV2
duplicates drop
sort N36
save `classif', replace

import excel "${IN}\CAPITAL_DURATION\Comptabilite_Nationale_05112019.xlsx", sheet("Durations") firstrow clear
gen N36_b = substr(N36,1,1)
sort N36_b
collapse (mean) duree_Totale, by(N36_b)
sort N36_b
joinby N36_b using `classif', unm(b)
keep if _merge == 3
drop _merge
sort NIV2
save "${OUT}\CN_DURATION_CAP_NIV2", replace
