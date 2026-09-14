* File:    04_build_policy_parameter_grid.do
* Purpose: Build the finite grid of policy and firm characteristics used for simulated statutory labor costs.
* Usage:   Run through the stage or package driver unless the README says otherwise.

clear all
set matsize 6000
global OUT "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\GENERIC"
cd "${OUT}"

* Build and filter the four policy dimensions first.  All submitted validity
* restrictions depend only on these dimensions, so filtering before crossing
* with firm characteristics is relationally identical but avoids materializing
* the former 26.96-million-row unrestricted product.
tempfile annee mois typeacc_f gmr_f policy_state apet minan eqtp_ent eqtp_aide mdo_f mrtt_f large_f

set obs 13
gen id = 1
gen annee_rtt = 1995 + _n
save `annee'

clear
set obs 12
gen id = 1
gen mois_rtt = _n
save `mois'

clear
set obs 11
gen typeacc = _n - 1
drop if typeacc == 8
replace typeacc = 100 if typeacc == 10
gen id = 1
save `typeacc_f'

clear
set obs 6
gen id = 1
gen gmr = _n
save `gmr_f'

use `annee', clear
joinby id using `mois'
joinby id using `typeacc_f'
joinby id using `gmr_f'
drop id

* Submitted policy-validity restrictions, applied before the large firm-characteristic cross.
drop if gmr == 1 & inlist(typeacc, 2, 3, 4, 5, 6, 7)
drop if gmr == 1 & annee_rtt > 1999
drop if gmr == 1 & annee_rtt == 1999 & mois_rtt >= 7
drop if gmr == 2 & (annee_rtt < 1999 | annee_rtt > 2000)
drop if gmr == 2 & annee_rtt == 1999 & mois_rtt <= 6
drop if gmr == 2 & annee_rtt == 2000 & mois_rtt >= 7
drop if gmr == 3 & (annee_rtt < 2000 | annee_rtt > 2001)
drop if gmr == 3 & annee_rtt == 2000 & mois_rtt <= 6
drop if gmr == 3 & annee_rtt == 2001 & mois_rtt >= 7
drop if gmr == 4 & (annee_rtt < 2001 | annee_rtt > 2002)
drop if gmr == 4 & annee_rtt == 2001 & mois_rtt <= 6
drop if gmr == 4 & annee_rtt == 2002 & mois_rtt >= 7
drop if gmr == 5 & annee_rtt < 2002
drop if gmr == 5 & annee_rtt == 2002 & mois_rtt <= 6
drop if typeacc == 0 & gmr != 1

* The SAS consumer immediately maps every GMR6 row to typeacc=missing, keeps
* only annee_rtt=2008/mois_rtt=6, and NODUPKEYs the resulting duplicates.
* Canonicalize that exact state here so identical rows are never expanded.
drop if gmr == 6 & (annee_rtt != 2008 | mois_rtt != 6)
replace typeacc = . if gmr == 6
duplicates drop annee_rtt mois_rtt typeacc gmr, force
gen id = 1
save `policy_state', replace

* Firm-characteristic dimensions.
clear
set obs 6
gen id = 1
gen apet_alt = _n
save `apet'

clear
set obs 15
gen id = 1
gen min_an = 1993 + _n
save `minan'

clear
set obs 2
gen id = 1
gen e_eqtp_ent = cond(_n == 1, 19, 20)
save `eqtp_ent'

clear
set obs 2
gen id = 1
gen e_eqtp_AAide = cond(_n == 1, 20, 21)
save `eqtp_aide'

clear
set obs 2
gen id = 1
gen mdo = _n - 1
save `mdo_f'

clear
set obs 2
gen id = 1
gen mrtt = _n - 1
save `mrtt_f'

clear
set obs 2
gen id = 1
gen large_f = _n - 1
save `large_f'

use `policy_state', clear
joinby id using `apet'
joinby id using `minan'
joinby id using `eqtp_ent'
joinby id using `eqtp_aide'
joinby id using `mdo_f'
joinby id using `mrtt_f'
joinby id using `large_f'
drop id
duplicates drop

export delimited using "generic_data", replace
clear
