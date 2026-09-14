* File:    01_prepare_training_2483.do
* Purpose: Harmonize the 2483 training-hours measures used in Tables 3, B2-B3, D3/D7, and the D9-D11 training-data subsample.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear
set more off
global OUT "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\FP"

tempfile fp2002 fp2003 fp2004 fp2005 fp2006 fp2007
capture program drop clean2
program define clean2
    capture drop __p50 __iqr
    egen __p50 = median(`1')
    egen __iqr = iqr(`1')
    replace `1' = . if `1' < (__p50 - 5 * __iqr) & !missing(`1')
    replace `1' = . if `1' > (__p50 + 5 * __iqr) & !missing(`1')
    drop __p50 __iqr
end

* Prepare each annual file once. They are appended only after all annual
* transformations, avoiding repeated rewrites of a growing cumulative stack.
* 2002: only training hours are retained because counts/expenditures do not feed requested outputs.
use siren honq02 hoq02 hemp02 hpi02 hcad02 using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2002", clear
rename siren siren2
gen siren = substr(siren2,1,9)
drop siren2
gen h_fp_ouv = honq02 + hoq02
gen h_fp_emp = hemp02
gen h_fp_tam = hpi02
gen h_fp_cad = hcad02
gen h_fp_tot = h_fp_ouv + h_fp_emp + h_fp_tam + h_fp_cad
keep siren h_fp_*
gen year = 2002
save `fp2002', replace

* 2003 has only an aggregate training-hours measure in the source file.
use SIREN OHTOT03 HTOT03 using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2003", clear
gen siren = substr(SIREN,1,9)
gen h_fp_tot = OHTOT03 + HTOT03
keep siren h_fp_*
gen year = 2003
save `fp2003', replace

* 2004.
use SIREN heurcad heurpi heuremp heuro heurform using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2004", clear
gen siren = substr(SIREN,1,9)
gen h_fp_ouv = heuro
gen h_fp_emp = heuremp
gen h_fp_tam = heurpi
gen h_fp_cad = heurcad
gen h_fp_tot = h_fp_ouv + h_fp_emp + h_fp_tam + h_fp_cad
replace h_fp_tot = heurform if missing(h_fp_tot) | h_fp_tot == 0
keep siren h_fp_*
gen year = 2004
save `fp2004', replace

* 2005.
use SIREN BE* using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2005", clear
gen siren = substr(SIREN,1,9)
gen h_fp_ouv = BE2
gen h_fp_emp = BE3
gen h_fp_tam = BE4
gen h_fp_cad = BE5
gen h_fp_tot = h_fp_ouv + h_fp_emp + h_fp_tam + h_fp_cad
replace h_fp_tot = BE6 if missing(h_fp_tot) | h_fp_tot == 0
keep siren h_fp_*
gen year = 2005
save `fp2005', replace

* 2006: reproduce the submitted duplicate rule before discarding unused count/expenditure fields.
use SIREN F12A F12B BC* BD* BE* using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2006", clear
gen siren = substr(SIREN,1,9)
rename F12A d_fp_e
rename F12B d_fp_i
gen d_fp_tot = d_fp_e + d_fp_i
gen nb_fp_ouv = BC2 + BD2
gen h_fp_ouv = BE2
gen nb_fp_emp = BC3 + BD3
gen h_fp_emp = BE3
gen nb_fp_tam = BC4 + BD4
gen h_fp_tam = BE4
gen nb_fp_cad = BC5 + BD5
gen h_fp_cad = BE5
gen nb_fp_tot = nb_fp_ouv + nb_fp_emp + nb_fp_tam + nb_fp_cad
replace nb_fp_tot = BC6 + BD6 if missing(nb_fp_tot) | nb_fp_tot == 0
gen h_fp_tot = h_fp_ouv + h_fp_emp + h_fp_tam + h_fp_cad
replace h_fp_tot = BE6 if missing(h_fp_tot) | h_fp_tot == 0
keep siren d_fp_e d_fp_i d_fp_tot nb_fp_* h_fp_*
duplicates drop
duplicates tag siren, generate(DUP06)
drop if DUP06 == 1
drop DUP06 d_fp_e d_fp_i d_fp_tot nb_fp_*
gen year = 2006
save `fp2006', replace

* 2007: same duplicate rule as in the submitted code.
use SIREN F12A F12B BC* BD* BE* using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2007", clear
gen siren = substr(SIREN,1,9)
rename F12A d_fp_e
rename F12B d_fp_i
gen d_fp_tot = d_fp_e + d_fp_i
gen nb_fp_ouv = BC2 + BD2
gen h_fp_ouv = BE2
gen nb_fp_emp = BC3 + BD3
gen h_fp_emp = BE3
gen nb_fp_tam = BC4 + BD4
gen h_fp_tam = BE4
gen nb_fp_cad = BC5 + BD5
gen h_fp_cad = BE5
gen nb_fp_tot = nb_fp_ouv + nb_fp_emp + nb_fp_tam + nb_fp_cad
replace nb_fp_tot = BC6 + BD6 if missing(nb_fp_tot) | nb_fp_tot == 0
gen h_fp_tot = h_fp_ouv + h_fp_emp + h_fp_tam + h_fp_cad
replace h_fp_tot = BE6 if missing(h_fp_tot) | h_fp_tot == 0
keep siren d_fp_e d_fp_i d_fp_tot nb_fp_* h_fp_*
duplicates drop
duplicates tag siren, generate(DUP07)
drop if DUP07 == 1
drop DUP07 d_fp_e d_fp_i d_fp_tot nb_fp_*
gen year = 2007
save `fp2007', replace

* The historical cumulative append order after the 2007 block was
* 2007,2006,...,2002. Preserve that order in one append operation.
use `fp2007', clear
append using `fp2006' `fp2005' `fp2004' `fp2003' `fp2002'

* Reproduce the original fallback window used to measure training changes.
gen h_fp_L0 = h_fp_ouv + h_fp_emp
gen h_fp_L123 = h_fp_tot - h_fp_L0
keep siren year h_fp_tot h_fp_L0 h_fp_L123
foreach x in h_fp_tot h_fp_L0 h_fp_L123 {
    gen Dtp_`x' = `x' > 0 if !missing(`x')
}
reshape wide h_fp_tot h_fp_L0 h_fp_L123 Dtp_*, i(siren) j(year)

foreach x in h_fp_tot h_fp_L0 h_fp_L123 {
    gen dln_`x' = ln(`x'2006) - ln(`x'2003)
    gen D_`x' = Dtp_`x'2006 - Dtp_`x'2003
    replace dln_`x' = (ln(`x'2007) - ln(`x'2003)) * (3/4) if missing(D_`x')
    replace D_`x' = Dtp_`x'2007 - Dtp_`x'2003 if missing(D_`x')
    replace dln_`x' = (ln(`x'2005) - ln(`x'2003)) * (3/2) if missing(D_`x')
    replace D_`x' = Dtp_`x'2005 - Dtp_`x'2003 if missing(D_`x')
    replace dln_`x' = (ln(`x'2006) - ln(`x'2002)) * (3/4) if missing(D_`x')
    replace D_`x' = Dtp_`x'2006 - Dtp_`x'2002 if missing(D_`x')
    replace dln_`x' = (ln(`x'2007) - ln(`x'2002)) * (3/5) if missing(D_`x')
    replace D_`x' = Dtp_`x'2007 - Dtp_`x'2002 if missing(D_`x')
    replace dln_`x' = ln(`x'2005) - ln(`x'2002) if missing(D_`x')
    replace D_`x' = Dtp_`x'2005 - Dtp_`x'2002 if missing(D_`x')
    replace dln_`x' = (ln(`x'2006) - ln(`x'2004)) * (3/2) if missing(D_`x')
    replace D_`x' = Dtp_`x'2006 - Dtp_`x'2004 if missing(D_`x')
    replace dln_`x' = ln(`x'2007) - ln(`x'2004) if missing(D_`x')
    replace D_`x' = Dtp_`x'2007 - Dtp_`x'2004 if missing(D_`x')
    clean2 dln_`x'

    gen DStat_`x' = `x'2002
    replace DStat_`x' = max(`x'2003 * exp(-dln_`x'*(1/3)), 0) if missing(DStat_`x')
    replace DStat_`x' = max(`x'2004 * exp(-dln_`x'*(2/3)), 0) if missing(DStat_`x')
    replace DStat_`x' = max(`x'2005 * exp(-dln_`x'), 0) if missing(DStat_`x')
    replace DStat_`x' = max(`x'2006 * exp(-dln_`x'*(4/3)), 0) if missing(DStat_`x')
    replace DStat_`x' = max(`x'2007 * exp(-dln_`x'*(5/3)), 0) if missing(DStat_`x')
    replace DStat_`x' = . if missing(dln_`x')
}

keep siren D_h_fp_tot D_h_fp_L0 D_h_fp_L123 DStat_h_fp_tot DStat_h_fp_L0 DStat_h_fp_L123
gen year = 2006
save "${OUT}\FP_av_2006", replace
