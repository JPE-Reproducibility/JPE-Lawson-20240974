* File:    fn_apply_common_restrictions.do
* Purpose: Apply restrictions that are literally identical in Figure 1, descriptive statistics, and regression samples.
* Usage:   Load this file, then call apply_common_restrictions on the current dataset.

capture program drop apply_common_restrictions
program define apply_common_restrictions
    drop if totpostes < 5
    foreach v in vaht catotal immocor {
        drop if missing(`v') & year != 2008
        drop if `v' <= 0 & year != 2008
    }
    drop if year > 2006
    gen byte k = inrange(year, 2000, 2006)
    egen totk = total(k), by(siren)
    drop if totk != 7
    drop k totk
end
