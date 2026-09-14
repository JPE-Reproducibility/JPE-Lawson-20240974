## Potential Personal Identifiable Information (PII)

⚠️ We found the following instances of potentially personally identifying information. This may be completely legitimate but might be worth checking. *As a reminder, privacy legislation in many countries (e.g. GDPR in EU) prohibits the dissemination of personal identifiable information without prior (and documented) consent of individuals.* If indeed you want to publish such information with your replication package, you should probably have obtained IRB approval for this - please check!

**Summary:**
- Data files with PII indicators: 3
- Variables flagged in data: 3
- Code files with PII references: 183
- PII references in code: 1932

### Summary of Flagged Files

| File Type | File | Variables/References | PII Categories |
|-----------|------|----------------------|----------------|
| Data | `CUMUL.csv` | 1 | lat |
| Data | `Donn_es.csv` | 1 | lat |
| Data | `econ-gen-taux-inflation.xlsx` | 1 | lat |
| Code | `00_PREPARE_DIRECTORIES.do` | 16 | loc, block, minute, second |
| Code | `00_check_sas_environment.sas` | 5 | lat, lon, name |
| Code | `00_check_stata_environment.do` | 26 | loc, name |
| Code | `00_resolve_casd_paths.sas` | 9 | name |
| Code | `00_run_regression_analysis.do` | 4 | loc, lat |
| Code | `01_SAS_CHECK_ENVIRONMENT.sas` | 6 | minute, name, second |
| Code | `01_build_descriptive_tables.do` | 17 | loc, lat, url |
| Code | `01_build_rtt_gmr_assignments.sas` | 4 | social, name |
| Code | `01_compute_table_g1_zero_layer_moment.sas` | 18 | lat, name, loc, son |
| Code | `01_extract_ficus_accounts.sas` | 19 | name, loc |
| Code | `01_prepare_training_2483.do` | 7 | lat, name, block, loc |
| Code | `02_STATA_CHECK_ENVIRONMENT.do` | 18 | loc, minute, block, second |
| Code | `02_build_figure1_minimum_wage_paths.do` | 2 | name |
| Code | `02_extract_dads_jobs.sas` | 6 | name, lat |
| Code | `02_extract_training_2483.sas` | 1 | name |
| Code | `02_prepare_national_accounts_deflators.do` | 31 | lat, lon, name, loc |
| Code | `03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.sas` | 6 | minute, name, second |
| Code | `03_build_figure2_labor_cost_distributions.do` | 9 | name, loc, second |
| Code | `03_build_minimum_wage_simulation_inputs.sas` | 7 | lat, name |
| Code | `03_extract_dads_1993_calibration.sas` | 2 | name |
| Code | `04_SAS_EXTRACT_DADS_JOBS.sas` | 6 | minute, name, second |
| Code | `04_build_policy_parameter_grid.do` | 2 | lat |
| Code | `04_extract_industry_nomenclatures.sas` | 4 | lat, loc, name |
| Code | `04_prepare_table_b1_sample_inputs.do` | 4 | block, loc, name |
| Code | `05_SAS_BUILD_MINIMUM_WAGE_INPUTS.sas` | 7 | minute, name, lat, second |
| Code | `05_build_table_b1_sample_construction.do` | 8 | block, loc, lon, name |
| Code | `06_SAS_EXTRACT_FICUS_ACCOUNTS.sas` | 6 | minute, name, second |
| Code | `07_SAS_EXTRACT_TRAINING_2483.sas` | 6 | minute, name, second |
| Code | `08_SAS_EXTRACT_DADS_1993_CALIBRATION.sas` | 6 | minute, name, second |
| Code | `09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.sas` | 8 | minute, lat, name, second |
| Code | `10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.sas` | 11 | lon, name, minute, second |
| Code | `11_STATA_PREPROCESSING.do` | 60 | loc, minute, block, second, lat |
| Code | `12A_SAS_BUILD_ORGANIZATION_BASE.sas` | 9 | name, second |
| Code | `12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas` | 11 | lat, name, second |
| Code | `12C_SAS_BUILD_ORGANIZATION_FINALIZE.sas` | 10 | name, second |
| Code | `13_STATA_BUILD_FINAL_ANALYSIS_DATA.do` | 18 | loc, minute, block, second |
| Code | `14_STATA_EMPIRICAL_ANALYSIS.do` | 58 | loc, minute, block, second |
| Code | `15_STATA_TABLE_B1.do` | 43 | loc, minute, block, second |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 13 | lat, son |
| Code | `Cal_Iter.m` | 6 | lat |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Cal_Iter.m` | 11 | lat, son |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 15 | city, loc, location, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 8 | city, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `Calibration.m` | 13 | city, loc, location, lat, name |
| Code | `CostMinimizationMW.m` | 9 | city, loc, location |
| Code | `CostMinimizationMW_A.m` | 5 | city, loc, location |
| Code | `CostMinimizationMW_c.m` | 5 | city, loc, location |
| Code | `CostMinimizationMW_h.m` | 5 | city, loc, location |
| Code | `CostMinimizationMW_lambda.m` | 5 | city, loc, location |
| Code | `CostMinimizationMW_mw.m` | 9 | city, loc, location |
| Code | `Figure_6_legFigG1.R` | 13 | name, lat, loc, lon, coord |
| Code | `Figure_7.R` | 11 | name, lat, loc, location, lon, coord |
| Code | `Figure_8.R` | 19 | name, lat, coord |
| Code | `Figure_F2.R` | 16 | name, lat, coord |
| Code | `Figure_G1.R` | 11 | name, lat, lon, coord |
| Code | `Figure_I1.R` | 19 | name, lat, loc, lon, coord |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 5 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 5 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 9 | lat |
| Code | `FreeEntrySolve_MW.m` | 9 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `FreeEntrySolve_MW.m` | 8 | lat |
| Code | `Graphs_Kaitz_v1.R` | 13 | social, lname, name, lon, country |
| Code | `Graphs_UNCERTAINTY_Bloom_v1.R` | 6 | country, lon, name, son |
| Code | `Main.R` | 7 | lat |
| Code | `Manual_mode_SAS_v1.sas` | 1 | block, loc |
| Code | `Manual_mode_STATA_v1.do` | 1 | block, loc |
| Code | `PMMW_GE.m` | 6 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 8 | lat |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 8 | lat |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 8 | lat |
| Code | `PMMW_GE.m` | 11 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `PMMW_GE.m` | 9 | lat, loc |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 20 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 2 | city, lat |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 10 | city, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 7 | city, lat, son, loc, location |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 2 | city, lat |
| Code | `ProfitMaximizationMW_GE.m` | 19 | city, lat, son, loc, location, name |
| Code | `ProfitMaximizationMW_GE.m` | 2 | city, lat |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 38 | lat, city, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 12 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `ProfitMaximizationMW_GE.m` | 9 | city, lat, son, name |
| Code | `TableH2.R` | 13 | name, lat, loc, lon, coord |
| Code | `fn_apply_analysis_sample_filters.do` | 5 | name, loc |
| Code | `fn_assemble_annual_firm_panel.do` | 6 | loc, name, lat |
| Code | `fn_compute_calibration_moments.do` | 4 | name, loc |
| Code | `fn_estimate_specifications.do` | 90 | loc, name |
| Code | `fn_estimate_tfp.do` | 10 | loc, name, lname |
| Code | `fn_export_regression_tables.do` | 70 | loc, lat |
| Code | `fn_run_regression_family.do` | 1 | lat |
| Code | `macro_build_calibration_moments.sas` | 3 | name |
| Code | `macro_build_firm_history.sas` | 1 | name |
| Code | `macro_build_firm_info_by_year.sas` | 2 | lat |
| Code | `macro_build_firm_organization_data.sas` | 9 | name, lat |
| Code | `macro_build_firm_rtt_history.sas` | 3 | lat, name |
| Code | `macro_build_simulated_firm_info.sas` | 1 | lat |
| Code | `macro_build_worker_level_data.sas` | 5 | name, url |
| Code | `macro_compute_labor_costs.sas` | 1 | lat |
| Code | `macros_dads_job_extraction.sas` | 6 | lon, name |

*See [Appendix](report-pii-appendix.md) for detailed listing of all flagged instances.*
