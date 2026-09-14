## Code Quality

### R

[CRITICAL] Hardcoded absolute path detected — the package will not run on another machine. (Main.R, line 2)
  → setwd("C:/Users/nicho/Documents/Research/MWO/Paper Drafts/Final JPE Files/Replication Files/MatlabR")

[CRITICAL] Hardcoded absolute path detected — the package will not run on another machine. (Main.R, line 2)
  → setwd("C:/Users/nicho/Documents/Research/MWO/Paper Drafts/Final JPE Files/Replication Files/MatlabR")

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_6_legFigG1.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_6_legFigG1.R, line 109)
  → filter(Indicators %in% indicators_to_plot) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_7.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_7.R, line 52)
  → filter(Indicators %in% indicator_levels) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_8.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_8.R, line 100)
  → filter(!is.na(Simulation)) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_F2.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_F2.R, line 78)
  → filter(!is.na(Simulation)) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_G1.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_G1.R, line 98)
  → filter(Indicators %in% indicators_to_plot) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_I1.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_I1.R, line 54)
  → filter(Scenario != "2% higher")

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (Figure_I1.R, line 124)
  → filter(Indicators %in% indicators_to_plot) %>%

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (TableH2.R, line 1)
  → rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

[ADVISORY] `filter(` call not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (TableH2.R, line 114)
  → filter(Indicators %in% indicators_to_plot) %>%

### Stata

[CRITICAL] No random seed set — stochastic calls detected in stata code.
  → Triggers found at: 01_prepare_training_2483.do:2, 04_build_policy_parameter_grid.do:2, 00_run_regression_analysis.do:54

[CRITICAL] Hardcoded absolute path detected — the package will not run on another machine. (Manual_mode_STATA_v1.do, line 8)
  → do "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe/code/manual/00_PREPARE_DIRECTORIES.do" "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe" "\\casd.fr\casdfs\Projets\BROBOTS\DATA"

[CRITICAL] Hardcoded absolute path detected — the package will not run on another machine. (Manual_mode_STATA_v1.do, line 31)
  → do "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe/code/manual/00_PREPARE_DIRECTORIES.do" "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe" "\\casd.fr\casdfs\Projets\BROBOTS\DATA"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (01_prepare_training_2483.do, line 91)
  → drop if DUP06 == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (01_prepare_training_2483.do, line 117)
  → drop if DUP07 == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 22)
  → keep if operation == "P1 " | operation == "P2 "

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 24)
  → keep if NOM == "A38"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 28)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 30)
  → keep if substr(prixderéférence,1,6) == "Indice"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 42)
  → drop if missing(idbank)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 46)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 55)
  → keep if year == 2010

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 78)
  → keep if NOM == "A38"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 81)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 95)
  → drop if missing(idbank)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 99)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 114)
  → keep if year == 2010

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 129)
  → drop if missing(apenrev1) | missing(apenrev2)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 134)
  → keep if _n == 1 | apenrev2[_n-1] != apenrev2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 142)
  → drop if missing(siren) | siren == "000000000"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 149)
  → drop if missing(siren) | siren == "000000000"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 153)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 155)
  → drop if missing(apenrev1) | missing(ape)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 160)
  → keep if _n == 1 | apenrev1[_n-1] != apenrev1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 165)
  → drop if missing(ape) | missing(apenrev2)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 175)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 182)
  → keep if _n == 1 | NIV2[_n-1] != NIV2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 189)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_prepare_national_accounts_deflators.do, line 202)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 30)
  → drop if typeacc == 8

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 50)
  → drop if gmr == 1 & annee_rtt == 1999 & mois_rtt >= 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 51)
  → drop if gmr == 2 & (annee_rtt < 1999 | annee_rtt > 2000)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 52)
  → drop if gmr == 2 & annee_rtt == 1999 & mois_rtt <= 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 53)
  → drop if gmr == 2 & annee_rtt == 2000 & mois_rtt >= 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 54)
  → drop if gmr == 3 & (annee_rtt < 2000 | annee_rtt > 2001)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 55)
  → drop if gmr == 3 & annee_rtt == 2000 & mois_rtt <= 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 56)
  → drop if gmr == 3 & annee_rtt == 2001 & mois_rtt >= 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 57)
  → drop if gmr == 4 & (annee_rtt < 2001 | annee_rtt > 2002)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 58)
  → drop if gmr == 4 & annee_rtt == 2001 & mois_rtt <= 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 59)
  → drop if gmr == 4 & annee_rtt == 2002 & mois_rtt >= 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 60)
  → drop if gmr == 5 & annee_rtt < 2002

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 61)
  → drop if gmr == 5 & annee_rtt == 2002 & mois_rtt <= 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_build_policy_parameter_grid.do, line 62)
  → drop if typeacc == 0 & gmr != 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 44)
  → drop if totpostesout != 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 45)
  → drop if totpostes0   != 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 46)
  → drop if totpostes1   != 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 47)
  → drop if missing(apet)             == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 48)
  → drop if layerlenient              >= 5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 49)
  → drop if missing(layerlenient)     == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 50)
  → drop if missing(max_ze1990)       == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 51)
  → drop if missing(vaht)    == 1 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 52)
  → drop if missing(catotal) == 1 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 53)
  → drop if missing(immocor) == 1 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 54)
  → drop if vaht     <= 0 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 55)
  → drop if catotal  <= 0 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 56)
  → drop if immocor  <= 0 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 57)
  → drop if annee_rtt == 2003

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 58)
  → drop if annee_rtt == 2004

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 59)
  → drop if annee_rtt == 2005

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 60)
  → drop if annee_rtt == 2006

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 61)
  → drop if annee_rtt == 2007

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 66)
  → drop if totk != 2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_analysis_sample_filters.do, line 72)
  → drop if totk != 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_assemble_annual_firm_panel.do, line 85)
  → drop if siren == "000000000"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_assemble_annual_firm_panel.do, line 88)
  → drop if t != catotal

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_assemble_annual_firm_panel.do, line 92)
  → drop if t != 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_assemble_annual_firm_panel.do, line 97)
  → drop if _merge != 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_assemble_annual_firm_panel.do, line 129)
  → drop if _merge == 2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 23)
  → drop if _merge == 2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 30)
  → drop if typeacc == 9

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 31)
  → drop if totpostes < 5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 33)
  → drop if missing(`v') == 1 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 34)
  → drop if `v' <= 0 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 36)
  → drop if year > 2007

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 37)
  → drop if year < 2000

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 40)
  → drop if totk != 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 48)
  → drop if sample_firms == 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 101)
  → drop if year != 2006

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 123)
  → drop if year != 2006

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_compute_calibration_moments.do, line 126)
  → drop if _merge != 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 54)
  → drop if _merge == 2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 60)
  → drop if immocor <= 0 | vaht <= 0 | catotal <= 0 | inputs <= 0 | wage_bill <= 0 | effsalm <= 0 | tothrs <= 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 77)
  → drop if _merge == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 87)
  → drop if _merge == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 100)
  → keep if _merge == 3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 131)
  → drop if missing(y) == 1 | missing(k) == 1 | missing(l_W) == 1 | missing(m) == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 134)
  → drop if SUM_un < 50

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_estimate_tfp.do, line 142)
  → keep if SECTOR == `n'

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (00_run_regression_analysis.do, line 29)
  → drop if _merge == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (00_run_regression_analysis.do, line 35)
  → drop if typeacc == 9

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (00_run_regression_analysis.do, line 39)
  → drop if gmr >= 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (01_build_descriptive_tables.do, line 27)
  → drop if gmr == 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (01_build_descriptive_tables.do, line 28)
  → drop if typeacc == 9

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (01_build_descriptive_tables.do, line 37)
  → drop if _merge == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (01_build_descriptive_tables.do, line 43)
  → keep if TO_KEEP2 == 1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_build_figure1_minimum_wage_paths.do, line 11)
  → drop if gmr == 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_build_figure1_minimum_wage_paths.do, line 12)
  → drop if typeacc == 9

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_build_figure1_minimum_wage_paths.do, line 15)
  → keep if inrange(year, 1995, 2010)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (02_build_figure1_minimum_wage_paths.do, line 49)
  → keep if inrange(AN, 1995, 2010)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 8)
  → drop if totpostes < 5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 9)
  → drop if year > 2006

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 12)
  → drop if totk != 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 14)
  → drop if gmr == 6

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 15)
  → drop if typeacc == 9

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 17)
  → drop if missing(`v') & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 18)
  → drop if `v' <= 0 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 20)
  → keep if year == 2002

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 32)
  → drop if layerlenient == 30

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 34)
  → drop if missing(NORM_s_supbrut_h)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 51)
  → keep if inrange(layerlenient, 1, 3)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (03_build_figure2_labor_cost_distributions.do, line 58)
  → drop if missing(BIN) | BIN >= 4

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 21)
  → drop if totpostes < 5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 22)
  → drop if missing(vaht) | missing(catotal) | missing(immocor)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 23)
  → drop if vaht <= 0 | catotal <= 0 | immocor <= 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 25)
  → keep if nperiod == 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 27)
  → drop if typeacc == 9

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 38)
  → keep if keepfirm

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 49)
  → keep if keepfirm

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 62)
  → drop if siren == "000000000"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 64)
  → keep if catotal == maxcatotal

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 67)
  → keep if one

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 99)
  → drop if inlist(siren,"000000000",""," ")

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 100)
  → drop if inlist(substr(siren,1,1),"F","P")

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (04_prepare_table_b1_sample_inputs.do, line 101)
  → drop if totpostes <= 0 | missing(totpostes)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (05_build_table_b1_sample_construction.do, line 28)
  → keep if substr(stat_cj,1,1) == "5"

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (05_build_table_b1_sample_construction.do, line 38)
  → drop if effsalm < 5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (05_build_table_b1_sample_construction.do, line 48)
  → keep if nperiod == 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (05_build_table_b1_sample_construction.do, line 58)
  → drop if missing(vaht) | missing(catotal) | missing(immocor)

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (05_build_table_b1_sample_construction.do, line 59)
  → drop if vaht <= 0 | catotal <= 0 | immocor <= 0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (05_build_table_b1_sample_construction.do, line 75)
  → keep if nperiod == 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_common_restrictions.do, line 7)
  → drop if totpostes < 5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_common_restrictions.do, line 9)
  → drop if missing(`v') & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_common_restrictions.do, line 10)
  → drop if `v' <= 0 & year != 2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_common_restrictions.do, line 12)
  → drop if year > 2006

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_apply_common_restrictions.do, line 15)
  → drop if totk != 7

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_export_regression_tables.do, line 58)
  → keep if table == `"`T'"'

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (fn_export_regression_tables.do, line 88)
  → keep if panel == `"`P'"'

