* File:    fn_estimate_tfp.do
* Purpose: Estimate only the accounting and Levinsohn-Petrin revenue TFP measures used in Table 4 and B2-B3.
* Usage:   Run through 00_build_final_analysis_data.do. Intermediate estimation files are Stata-managed tempfiles.

clear
clear matrix
set matsize 3000
global OUT "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\TFP"
global IN1 "$root\data\public\original\For_3_STATA_PREPROCESSING"
global IN2 "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING"
global IN3 "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
cd "${OUT}"
set more off

capture program drop clean2_sec
program define clean2_sec
    capture drop __p50 __iqr
    egen __p50 = median(`1'), by(NIV2)
    egen __iqr = iqr(`1'), by(NIV2)
    replace `1' = . if `1' < (__p50 - 5 * __iqr) & missing(`1') == 0
    replace `1' = . if `1' > (__p50 + 5 * __iqr) & missing(`1') == 0
    drop __p50 __iqr
end

capture program drop prog_TFPest
program define prog_TFPest
    tempfile ape tp tfp_h tfp_w

    * Build the submitted NAF 1993/2003 bridge used for sector-specific factor shares and LP estimation.
    import excel "${IN1}\NOMENCLATURES_NAF\naf1993_5_niveaux.xls", sheet("COD93") firstrow allstring clear
    sort N_700
    save `ape', replace
    import excel "${IN1}\NOMENCLATURES_NAF\naf2003_n1-5.xls", sheet("COD03") firstrow allstring clear
    sort N_700
    joinby N_700 using `ape', unm(b) update
    drop _merge
    gen max_apet_final = substr(N_700,1,2)+substr(N_700,4,2)
    save `ape', replace

    * The mean duration is used only to impute sectors missing a capital-service duration.
    use "${IN2}\CN\CN_DURATION_CAP_NIV2", clear
    quietly summarize duree_Totale
    local missing_duration = r(mean)

    use siren year saltrait charsoc achat_mp achat_mar achat_serv immocor amimcor effsalm vaht tothrs totpostes catotal max_apet_final using "${IN3}\data_lp02_analysis", clear
    foreach xx of varlist saltrait charsoc achat_mp achat_mar achat_serv immocor amimcor vaht catotal effsalm tothrs* totpostes* {
        replace `xx' = 0 if missing(`xx') == 1
    }

    gen NIV2 = substr(max_apet_final,1,2)
    sort NIV2
    joinby NIV2 using "${IN2}\CN\CN_DURATION_CAP_NIV2", unm(b)
    replace duree_Totale = `missing_duration' if _merge == 1
    drop if _merge == 2
    drop _merge

    gen year_CAP = round(year - (amimcor / immocor * duree_Totale))
    gen wage_bill = saltrait + charsoc
    gen inputs = achat_mp + achat_mar + achat_serv
    drop if immocor <= 0 | vaht <= 0 | catotal <= 0 | inputs <= 0 | wage_bill <= 0 | effsalm <= 0 | tothrs <= 0

    gen RATIO_wage = wage_bill/catotal
    gen RATIO_input = inputs/catotal
    gen RATIO_immocor = immocor/catotal
    clean2_sec RATIO_wage
    clean2_sec RATIO_input
    clean2_sec RATIO_immocor
    replace wage_bill = . if missing(RATIO_wage) == 1
    replace inputs = . if missing(RATIO_input) == 1
    replace immocor = . if missing(RATIO_immocor) == 1

    sort year NIV2
    save `tp', replace
    use "${IN2}\CN\CN_PRICES_PROD_NIV2_base2010", clear
    sort year NIV2
    joinby year NIV2 using `tp', unm(b)
    drop if _merge == 1
    drop _merge
    sort NIV2 year_CAP
    save `tp', replace

    use "${IN2}\CN\CN_PRICES_CAP_NIV2_base2010", clear
    rename year year_CAP
    rename pyyyy_p2010 pyyyy_p2010_CAP
    sort NIV2 year_CAP
    joinby NIV2 year_CAP using `tp', unm(b)
    drop if _merge == 1
    drop _merge

    gen y = ln(catotal) - ln(pyyyy_p2010_PROD)
    gen l_H = ln(tothrs)
    gen l_W = ln(totpostes)
    gen m = ln(inputs) - ln(pyyyy_p2010_INT)
    gen k = ln(immocor) - ln(pyyyy_p2010_CAP)
    drop year_CAP duree_Totale pyyyy_p2010_*

    sort siren
    sort max_apet_final
    joinby max_apet_final using `ape', unm(b)
    keep if _merge == 3
    drop _merge
    save `tp', replace

    * Accounting TFP: preserve the submitted factor-share construction and retain only the two published measures.
    sort N_31 year
    collapse (sum) s_wage_bill = wage_bill s_inputs = inputs s_catotal = catotal s_immocor = immocor, by(N_31 year)
    gen RATIO_wage = s_wage_bill/s_catotal
    gen RATIO_input = s_inputs/s_catotal
    gen RATIO_immocor = 0.15*(s_immocor/s_catotal)
    collapse (mean) RATIO_wage RATIO_input RATIO_immocor, by(N_31)
    gen PROFIT = 1/(RATIO_wage + RATIO_input + RATIO_immocor)
    gen BETA_wage = PROFIT * RATIO_wage
    gen BETA_input = PROFIT * RATIO_input
    gen BETA_immocor = PROFIT * RATIO_immocor
    keep BETA_* N_31
    sort N_31
    joinby N_31 using `tp', unm(n)
    gen l_PROD_FS_hours = y - BETA_wage * l_H - BETA_input * m - BETA_immocor * k
    gen l_PROD_FS_postes = y - BETA_wage * l_W - BETA_input * m - BETA_immocor * k
    drop BETA_*
    save `tp', replace

    * Levinsohn-Petrin/GMM TFP: estimate the hours and jobs specifications exactly as submitted.
    egen ID = group(siren)
    tsset ID year
    gen l1_l_H = l1.l_H
    gen l1_l_W = l1.l_W
    gen l1_m = l1.m
    gen l1_k = l1.k
    gen l2_m = l2.m
    drop if missing(y) == 1 | missing(k) == 1 | missing(l_W) == 1 | missing(m) == 1
    gen un = 1
    egen SUM_un = sum(un), by(N_31)
    drop if SUM_un < 50
    egen SECTOR = group(N_31)
    quietly summarize SECTOR
    local nb_sector = r(max)
    save `tp', replace

    forvalues n = 1/`nb_sector' {
        use `tp', clear
        keep if SECTOR == `n'
        xi i.year
        renpfix "_I" ""

        xi:ivregress gmm y k l_H l1_l_H l1_m l1_k year_* i.N_700 ( m = l2_m ), rob
        matrix b = e(b)
        matrix bb = b[1,"m".."l_H"]
        if `n' == 1 matrix TFP_H = (`n', bb)
        if `n' > 1 matrix TFP_H = (TFP_H \ `n', bb)

        xi:ivregress gmm y k l_W l1_l_W l1_m l1_k year_* i.N_700 ( m = l2_m ), rob
        matrix b = e(b)
        matrix bb = b[1,"m".."l_W"]
        if `n' == 1 matrix TFP_W = (`n', bb)
        if `n' > 1 matrix TFP_W = (TFP_W \ `n', bb)
    }

    matrix colnames TFP_H = SECTOR bH_m bH_k bH_l
    matrix colnames TFP_W = SECTOR bW_m bW_k bW_l

    clear
    svmat TFP_H, names(matcol)
    rename TFP_H* *
    sort SECTOR
    save `tfp_h', replace

    clear
    svmat TFP_W, names(matcol)
    rename TFP_W* *
    sort SECTOR
    save `tfp_w', replace

    use `tp', clear
    sort SECTOR
    joinby SECTOR using `tfp_h', unm(b)
    drop _merge
    joinby SECTOR using `tfp_w', unm(b)
    drop _merge
    gen l_PROD_OP_H = y - bH_l * l_H - bH_m * m - bH_k * k
    gen l_PROD_OP_W = y - bW_l * l_W - bW_m * m - bW_k * k

    keep siren year l_PROD_FS_hours l_PROD_FS_postes l_PROD_OP_H l_PROD_OP_W
    sort siren year
    save "${OUT}\TFP_lp02_analysis", replace
end
