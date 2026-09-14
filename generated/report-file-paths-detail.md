## Filepaths Analysis Details

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/01_extract_ficus_accounts.sas**

- Line 3, unix : Purpose: Extract and harmonize the 1996-2007 FICUS/SUSE firm-accounting files used downstream.
- Line 26, windows : %include "&root\code\Tools\00_resolve_casd_paths.sas";
- Line 194, windows : &root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_&an..dta
- Line 203, windows : &root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_2000.dta
- Line 211, windows : &root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_&an..dta
- Line 247, windows : proc export data=tp replace dbms=stata outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_&an..dta"; run;
- Line 277, windows : proc export data=tp replace dbms=stata outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_2007.dta"; run;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_assemble_annual_firm_panel.do**

- Line 6, windows : cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
- Line 26, unix : forvalues year = 1996/2008 {
- Line 27, windows : use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02`year'.dta", clear
- Line 49, windows : capture erase "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02`year'.dta"
- Line 74, unix : forvalues year = 1996/2007 {

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_lambda.m**

- Line 46, unix : % prepare matrices/arrays for cost and marginal cost

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/PMMW_GE.m**

- Line 52, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/Calibration.m**

- Line 113, unix : N = 150 + last_alpha/10;
- Line 154, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 299, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 302, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 397, unix : fs_w = ga_z/sum(ga_z);
- Line 425, unix : TableG1_iv = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4';''},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/tm(8,2);mod_par(4:6,1)],3);nan],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 236, unix : % effect on within-firm inequality (top/bottom)
- Line 457, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2002.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/Calibration.m**

- Line 119, unix : N = 150 + last_alpha/10;
- Line 160, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 309, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 312, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 411, unix : fs_w = ga_z/sum(ga_z);
- Line 440, unix : TableH1 = table({'c';'h';'A';'f_E';'f';'mw/aw';'chi';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(10,1)/av_wage_r],3);round(mod_par(9,1),2);round(mod_par(4:6,1),2)],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 159, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 162, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/Cal_Iter.m**

- Line 47, unix : N = 150 + last_alpha/10;
- Line 86, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 235, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 238, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 329, unix : fs_w = ga_z/sum(ga_z);
- Line 343, unix : kaitz_r = mw/median(w_dist(:,2),Weights=w_dist(:,1));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.sas**

- Line 20, windows : %include "&root\code\Programs\1_SAS_DADS\01_build_rtt_gmr_assignments.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 3/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Figures A2-A3/Code/Graphs_Kaitz_v1.R**

- Line 11, unix : # Accessed 29/08/2026

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_c.m**

- Line 46, unix : % prepare matrices/arrays for cost and marginal cost

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 165, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 168, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/Cal_Iter.m**

- Line 47, unix : N = 150 + last_alpha/10;
- Line 86, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 235, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 238, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 329, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 235, unix : % effect on within-firm inequality (top/bottom)
- Line 448, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 36, unix : N = 150 + last_alpha/10;
- Line 185, unix : % effect on within-firm inequality (top/bottom)
- Line 385, unix : 'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'Unemployed';'L=0';'L=1';'L=2';'L=3';'L=0 (baseline for continuing)';'L=1 (baseline for continuing)';'L=2 (baseline for continuing)';'L=3 (baseline for continuing)';...
- Line 410, unix : rownames = {'Minimum wage relative to k';'Net wage k';'Average wage';'Share of firms bound';'Share of workers bound';'Fixed-cost workers';'Workers/managers';'Firms';'Teachers';'Unemployed';'Total output';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.sas**

- Line 20, windows : %include "&root\code\Programs\2_SAS_OTHER\04_extract_industry_nomenclatures.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 9/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/Cal_Iter.m**

- Line 47, unix : N = 150 + last_alpha/10;
- Line 86, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 235, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 238, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 329, unix : fs_w = ga_z/sum(ga_z);
- Line 343, unix : mw_mean_r = mw/dot(w_dist(:,1),w_dist(:,2));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_apply_analysis_sample_filters.do**

- Line 6, windows : cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
- Line 128, unix : forvalues l = 1/4 {
- Line 136, unix : forvalues l = 1/4 {
- Line 142, unix : gen lnvapw = ln(vaht/totpostes)
- Line 143, unix : gen lnvaphrs = ln(vaht/tothrs)
- Line 145, unix : gen lnkpl = ln(immocor/totpostes)
- Line 146, unix : gen lnkphrs = ln(immocor/tothrs)
- Line 148, unix : forvalues l = 1/4 {
- Line 153, unix : gen sharelowwagehrs = hrs_below_mw2006/tothrs
- Line 177, unix : gen lninputspl = ln(inputs/totpostes)
- Line 178, unix : gen lninputsphrs = ln(inputs/tothrs)
- Line 179, unix : gen lninvcorppl = ln(invcorp/totpostes)
- Line 180, unix : gen lninvcorpphrs = ln(invcorp/tothrs)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 235, unix : % effect on within-firm inequality (top/bottom)
- Line 448, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/Cal_Iter.m**

- Line 48, unix : N = 150 + last_alpha/10;
- Line 87, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 236, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 239, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 334, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/Calibration.m**

- Line 111, unix : N = 150 + last_alpha/10;
- Line 152, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 297, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 300, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 395, unix : fs_w = ga_z/sum(ga_z);
- Line 422, unix : TableG1_i = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/tm(8,2);mod_par(4:6,1)],3)],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_A.m**

- Line 46, unix : % prepare matrices/arrays for cost and marginal cost

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Manual_mode_STATA_v1.do**

- Line 8, windows : do "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe/code/manual/00_PREPARE_DIRECTORIES.do" "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe" "\\casd.fr\casdfs\Projets\BROBOTS\DATA"
- Line 31, windows : do "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe/code/manual/00_PREPARE_DIRECTORIES.do" "C:/Users/Public/Documents/MW_Firms_replication_package_gmail_safe" "\\casd.fr\casdfs\Projets\BROBOTS\DATA"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/01_SAS_CHECK_ENVIRONMENT.sas**

- Line 20, windows : %include "&root\code\Tools\00_check_sas_environment.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\01_SAS_CHECK_ENVIRONMENT.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 1/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\01_SAS_CHECK_ENVIRONMENT.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/02_extract_dads_jobs.sas**

- Line 3, unix : Purpose: Extract and harmonize job-level DADS/BTS Postes records for 1995-2008.
- Line 25, windows : libname out1 "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
- Line 26, windows : libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
- Line 37, windows : %include "&root\code\Programs\1_SAS_DADS\MACROS\macros_dads_job_extraction.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 159, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 162, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/functions/fn_export_regression_tables.do**

- Line 31, unix : gen double tstat = abs(b/se)
- Line 32, unix : gen double tstatmag = abs(mag/mag_se)
- Line 33, unix : gen double tstatmag2 = abs(mag2/mag2_se)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_compute_labor_costs.sas**

- Line 10, unix : sbj = s_brut/duree;
- Line 11, unix : pss = pss_a/360;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_1997.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 165, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 168, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/03_extract_dads_1993_calibration.sas**

- Line 3, unix : Purpose: Extract the 1993 DADS/BTS firm employment measure used for the new-firm calibration moment.
- Line 30, windows : OUTFILE = "&root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_firm_rtt_history.sas**

- Line 126, unix : share_postes = totpostes_siret/totpostes_siren;
- Line 176, unix : share_totobs_gmr = totobs_gmr/totobs;
- Line 192, unix : share_totobs_typeacc = totobs_typeacc/totobs;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2005.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/07_SAS_EXTRACT_TRAINING_2483.sas**

- Line 20, windows : %include "&root\code\Programs\2_SAS_OTHER\02_extract_training_2483.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\07_SAS_EXTRACT_TRAINING_2483.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 7/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\07_SAS_EXTRACT_TRAINING_2483.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2006.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/03_build_figure2_labor_cost_distributions.do**

- Line 6, windows : cd "$root\output\generated\Output_graphs\CD"
- Line 7, windows : use "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\data_lp02_analysis.dta", clear
- Line 25, windows : use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\Dworkerlevel_lp022002", clear
- Line 33, unix : gen double NORM_s_supbrut_h = s_supbrut_h/9.22
- Line 36, unix : forvalues b = 8/50 {
- Line 45, unix : replace nn = nn/total
- Line 54, unix : replace nn = nn/total
- Line 59, unix : forvalues s = 0/3 {
- Line 65, windows : graph export "$root\output\generated\Output_graphs\figure_02_panel_`panel'.pdf", replace

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_G1.R**

- Line 47, unix : WORKERS         = `Workers/managers`,

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/Cal_Iter.m**

- Line 22, unix : ga = ga/sum(ga);
- Line 72, unix : fs_w = ga_z/sum(ga_z);
- Line 81, unix : aw_ratio_r = av_wage_r/k;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/00_build_final_analysis_data.do**

- Line 7, windows : do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_assemble_annual_firm_panel.do"
- Line 8, windows : do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_apply_analysis_sample_filters.do"
- Line 9, windows : do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_estimate_tfp.do"
- Line 10, windows : do "$root\code\Programs\5_STATA_FINAL_DATA_CONSTRUCTION\functions\fn_compute_calibration_moments.do"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 165, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 168, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 236, unix : % effect on within-firm inequality (top/bottom)
- Line 457, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2001.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12C_SAS_BUILD_ORGANIZATION_FINALIZE.sas**

- Line 2, unix : Manual stage 12C/12C - low-resource alternative to stage 12.
- Line 30, windows : libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
- Line 31, windows : libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
- Line 32, windows : libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";
- Line 51, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_compute_labor_costs.sas";
- Line 54, windows : datafile="&root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx"
- Line 65, windows : proc printto log="&root\output\logs\DadsCalibrationMoments2.txt" new; run;
- Line 66, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_calibration_moments.sas";
- Line 69, windows : proc printto log="&root\output\logs\WorkerLevel.txt" new; run;
- Line 70, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_worker_level_data.sas";
- Line 82, unix : %else %put ERROR: Phase 12C failed. Inputs were retained for diagnosis/rerun.;
- Line 88, windows : filename mwtim "&root\output\logs\timings\12C_SAS_BUILD_ORGANIZATION_FINALIZE.txt";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 163, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 166, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2003.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/Calibration.m**

- Line 113, unix : N = 150 + last_alpha/10;
- Line 154, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 397, unix : fs_w = ga_z/sum(ga_z);
- Line 425, unix : TableG1_iii = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4';''},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/tm(8,2);mod_par(4:6,1)],3);nan],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/MACROS/macros_dads_job_extraction.sas**

- Line 3, unix : Purpose: Define reusable SAS macros for regional DADS/BTS Postes extraction and harmonization.
- Line 140, unix : else if nbheur=0 then e_eqtp=min(1,duree/360);
- Line 141, unix : else e_eqtp=max(0,min(1,nbheur/nbheur_med));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 76, unix : diff = output_h/output-1.064
- Line 87, unix : diff = output_c/output-1.064
- Line 98, unix : diff = output_l/output-1.064
- Line 109, unix : diff = output_A/output-1.064

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Calibration.m**

- Line 111, unix : N = 150 + last_alpha/10;
- Line 152, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 301, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 304, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 399, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/Cal_Iter.m**

- Line 44, unix : N = 150 + last_alpha/10;
- Line 83, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 228, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 231, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 322, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 163, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 166, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/Cal_Iter.m**

- Line 44, unix : N = 150 + last_alpha/10;
- Line 83, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 322, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinQMW.m**

- Line 71, unix : zn_opt = fminsearch(fc1x,[2;1/h],zoptions);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2008.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/Calibration.m**

- Line 111, unix : N = 150 + last_alpha/10;
- Line 152, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 297, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 300, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 395, unix : fs_w = ga_z/sum(ga_z);
- Line 422, unix : TableG1_ii = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/tm(8,2);mod_par(4:6,1)],3)],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12A_SAS_BUILD_ORGANIZATION_BASE.sas**

- Line 2, unix : Manual stage 12A/12C - low-resource alternative to stage 12.
- Line 3, unix : Build the baseline firm history and annual RTT/GMR firm files.
- Line 29, windows : libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
- Line 30, windows : libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
- Line 31, windows : libname sim  "&root\output\generated\Output_data\For_1_SAS_DADS\SIMUL";
- Line 32, windows : libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";
- Line 34, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_compute_labor_costs.sas";
- Line 35, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_simulated_firm_info.sas";
- Line 36, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_history.sas";
- Line 37, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_rtt_history.sas";
- Line 41, windows : datafile="&root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx"
- Line 52, windows : datafile="&root\output\generated\Output_data\For_3_STATA_PREPROCESSING\GENERIC\generic_data.csv"
- Line 59, windows : proc printto log="&root\output\logs\LogNoApprentis_LP02_vol1_low_resource.txt" new; run;
- Line 73, unix : %else %put ERROR: Phase 12A failed. Inputs were retained for diagnosis/rerun.;
- Line 79, windows : filename mwtim "&root\output\logs\timings\12A_SAS_BUILD_ORGANIZATION_BASE.txt";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/Calibration.m**

- Line 71, unix : ga = ga/sum(ga);
- Line 119, unix : fs_w = ga_z/sum(ga_z);
- Line 130, unix : aw_ratio_r = av_wage_r/k;
- Line 141, unix : TableI1 = table({'c';'A';'f_E';'f';'mw';'gamma'},[round([mod_par(1:2,1);mod_par(4:6,1);mod_par(3,1)],3)],{'teachers';'new firms';'size';'avg wage';'avg wage/k';'log-log coefficient'},...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_firm_organization_data.sas**

- Line 236, windows : outfile="&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02&year..dta"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2000.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/7_SAS_APPENDIX_G/01_compute_table_g1_zero_layer_moment.sas**

- Line 7, unix : Project/Programs/SAS/CALIBRATION_SELF_EMPLOYED/SELF_EMPLOYED_2010_2016.sas.
- Line 28, unix : output/generated/Output_moments/table_g01_zero_layer_firms.csv
- Line 29, unix : output/generated/Output_moments/table_g01_fare_diagnostics.csv
- Line 31, unix : The aggregate outputs remain subject to CASD/cascad output-control procedures.
- Line 54, windows : libname _mwgen "&root\output\generated";
- Line 56, windows : libname _mwmom "&root\output\generated\Output_moments";
- Line 61, windows : %include "&root\code\Tools\00_resolve_casd_paths.sas";
- Line 204, windows : outfile="&root\output\generated\Output_moments\table_g01_zero_layer_firms.csv"
- Line 210, windows : outfile="&root\output\generated\Output_moments\table_g01_fare_diagnostics.csv"
- Line 232, windows : %put NOTE: Aggregate output: &root\output\generated\Output_moments\table_g01_zero_layer_firms.csv;
- Line 233, windows : %put NOTE: Diagnostic output: &root\output\generated\Output_moments\table_g01_fare_diagnostics.csv;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 165, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 168, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 163, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 166, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 34, unix : ga = ga/sum(ga);
- Line 97, unix : 'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'Average firm size';'Average firm size (baseline for continuing)';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 154, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/04_prepare_table_b1_sample_inputs.do**

- Line 9, windows : local bb "$root\output\generated\Output_data\For_6_STATA_ANALYSES\Building_blocks"
- Line 19, windows : use "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\data_lp02_analysis.dta", clear
- Line 55, unix : forvalues y = 2000/2006 {
- Line 56, windows : use "$root\output\generated\Output_data\For_2_SAS_OTHER\FICUS_STATA\FICUS_UL_`y'.dta", clear
- Line 90, unix : forvalues y = 2000/2006 {
- Line 92, windows : use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\dadsclean_lp02`y'.dta", clear

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/Calibration.m**

- Line 111, unix : N = 150 + last_alpha/10;
- Line 152, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 301, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 304, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 399, unix : fs_w = ga_z/sum(ga_z);
- Line 426, unix : TableG1_v = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/tm(8,2);mod_par(4:6,1)],3)],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas**

- Line 42, windows : libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
- Line 43, windows : libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
- Line 44, windows : libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";
- Line 59, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_compute_labor_costs.sas";
- Line 60, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_info_by_year.sas";
- Line 61, windows : %include "&root\code\Programs\4_SAS_ORGANIZATIONS\MACROS\macro_build_firm_organization_data.sas";
- Line 65, windows : datafile="&root\data\public\original\For_4_SAS_ORGANIZATIONS\zones_emploi_adjusted.xls"
- Line 83, windows : proc printto log="&root\output\logs\LogNoApprentis_LP02_&organization_year..txt" new; run;
- Line 98, unix : %else %put ERROR: Year &organization_year failed. Annual inputs were retained for diagnosis/rerun.;
- Line 104, windows : filename mwtim "&root\output\logs\timings\12B_SAS_BUILD_ORGANIZATION_&organization_year..txt";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 163, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 166, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 163, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 166, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/12_run_dd_iv.do**

- Line 4, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_1998.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/01_build_descriptive_tables.do**

- Line 19, windows : cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
- Line 22, windows : merge m:1 siren year using "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\TFP\TFP_lp02_analysis.dta"
- Line 25, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_apply_common_restrictions.do"
- Line 32, windows : use "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\FP\FP_av_2006", clear
- Line 45, unix : forvalues n = 1/4 {
- Line 49, unix : gen double vaphrs = vaht/tothrs
- Line 50, unix : replace vaht = vaht/1000
- Line 51, unix : gen double tothrs_fte = tothrs/1607
- Line 71, windows : esttab using "$root\output\generated\Output_dstats\table_b02.csv", replace csv main(mean) aux(sd) nostar unstack noobs nonote label
- Line 75, windows : esttab using "$root\output\generated\Output_dstats\table_b03.csv", replace csv main(mean) aux(sd) nostar unstack noobs nonote label
- Line 78, windows : esttab using "$root\output\generated\Output_dstats\figure_01_panel_c.csv", replace csv main(mean) aux(sd) nostar unstack noobs nonote label
- Line 82, windows : tabout max_apet_final1 gmr if year == 2002 using "$root\output\generated\Output_dstats\table_b04.csv", c(col) style(csv) replace
- Line 83, windows : tabout max_apet_final1 flow if year == 2002 using "$root\output\generated\Output_dstats\table_b05.csv", c(col) style(csv) replace
- Line 84, windows : tabout max_apet_final1 flow if year == 2002 using "$root\output\generated\Output_dstats\table_b06.csv", c(row) style(csv) replace
- Line 95, unix : forvalues l = 1/4 {
- Line 101, unix : forvalues k = 1/3 {
- Line 110, windows : putexcel set "$root\output\generated\Output_dstats\table_c01.xlsx", replace sheet("`x'")
- Line 113, windows : else putexcel set "$root\output\generated\Output_dstats\table_c01.xlsx", modify sheet("`x'")
- Line 116, unix : forvalues L = 1/3 {

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_I1.R**

- Line 67, unix : WORKERS         = `Workers/managers`,

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_mw.m**

- Line 38, unix : % prepare matrices/arrays for cost and marginal cost

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 235, unix : % effect on within-firm inequality (top/bottom)
- Line 448, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/10_run_dd_ols.do**

- Line 4, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Tools/00_check_sas_environment.sas**

- Line 3, unix : Purpose: Record SAS version/platform and confirm package-level path variables before the CASD analysis.
- Line 23, windows : filename _mwenv "&root\output\run_metadata\sas_environment.txt" encoding='utf-8';

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_estimate_tfp.do**

- Line 8, windows : global OUT "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\TFP"
- Line 9, windows : global IN1 "$root\data\public\original\For_3_STATA_PREPROCESSING"
- Line 10, windows : global IN2 "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING"
- Line 11, windows : global IN3 "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
- Line 30, windows : import excel "${IN1}\NOMENCLATURES_NAF\naf1993_5_niveaux.xls", sheet("COD93") firstrow allstring clear
- Line 33, windows : import excel "${IN1}\NOMENCLATURES_NAF\naf2003_n1-5.xls", sheet("COD03") firstrow allstring clear
- Line 41, windows : use "${IN2}\CN\CN_DURATION_CAP_NIV2", clear
- Line 52, windows : joinby NIV2 using "${IN2}\CN\CN_DURATION_CAP_NIV2", unm(b)
- Line 62, unix : gen RATIO_wage = wage_bill/catotal
- Line 63, unix : gen RATIO_input = inputs/catotal
- Line 64, unix : gen RATIO_immocor = immocor/catotal
- Line 74, windows : use "${IN2}\CN\CN_PRICES_PROD_NIV2_base2010", clear
- Line 82, windows : use "${IN2}\CN\CN_PRICES_CAP_NIV2_base2010", clear
- Line 107, unix : gen RATIO_wage = s_wage_bill/s_catotal
- Line 108, unix : gen RATIO_input = s_inputs/s_catotal

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 165, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 168, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/TableH2.R**

- Line 60, unix : WORKERS         = `Workers/managers`,

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Manual_mode_SAS_v1.sas**

- Line 4, windows : %let root=C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe;
- Line 5, windows : %let casd_data_root=\\casd.fr\casdfs\Projets\BROBOTS\DATA;
- Line 9, windows : %include "&root\code\manual\01_SAS_CHECK_ENVIRONMENT.sas";
- Line 14, windows : %include "&root\code\manual\03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.sas";
- Line 17, windows : %include "&root\code\manual\06_SAS_EXTRACT_FICUS_ACCOUNTS.sas";
- Line 20, windows : %include "&root\code\manual\07_SAS_EXTRACT_TRAINING_2483.sas";
- Line 23, windows : %include "&root\code\manual\08_SAS_EXTRACT_DADS_1993_CALIBRATION.sas";
- Line 26, windows : %include "&root\code\manual\09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.sas";
- Line 29, windows : %include "&root\code\manual\10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.sas";
- Line 34, windows : %include "&root\code\manual\04_SAS_EXTRACT_DADS_JOBS.sas";
- Line 37, windows : %include "&root\code\manual\05_SAS_BUILD_MINIMUM_WAGE_INPUTS.sas";
- Line 42, windows : %let root=C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe;
- Line 43, windows : %let casd_data_root=\\casd.fr\casdfs\Projets\BROBOTS\Data;
- Line 48, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12A_SAS_BUILD_ORGANIZATION_BASE.sas";
- Line 51, windows : %let root=C:\Users\Public\Documents\MW_Firms_replication_package_gmail_safe;
- Line 52, windows : %let casd_data_root=\\casd.fr\casdfs\Projets\BROBOTS\Data;
- Line 54, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1996.sas";
- Line 55, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1997.sas";
- Line 56, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1998.sas";
- Line 57, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_1999.sas";
- Line 58, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2000.sas";
- Line 59, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2001.sas";
- Line 60, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2002.sas";
- Line 61, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2003.sas";
- Line 62, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2004.sas";
- Line 63, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2005.sas";
- Line 64, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2006.sas";
- Line 65, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2007.sas";
- Line 66, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_2008.sas";
- Line 68, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12C_SAS_BUILD_ORGANIZATION_FINALIZE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/04_extract_industry_nomenclatures.sas**

- Line 26, windows : %include "&root\code\Tools\00_resolve_casd_paths.sas";
- Line 66, windows : outfile = "&root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2002.dta"; run;
- Line 71, windows : outfile = "&root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2003.dta"; run;
- Line 72, windows : libname brn2008 "&casd_data_root\DECFISCPRO_BIC-RN_2008"; run;
- Line 77, windows : outfile = "&root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2008.dta"; run;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 159, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 162, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/03_build_minimum_wage_simulation_inputs.sas**

- Line 25, windows : libname in1  "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
- Line 26, windows : libname in2  "&root\output\generated\Output_data\For_1_SAS_DADS\GMR";
- Line 27, windows : libname out1 "&root\output\generated\Output_data\For_1_SAS_DADS\SIMUL";
- Line 61, unix : Historical q.rtt distinguishes the subsidy date from the RTT/GMR date: for

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_calibration_moments.sas**

- Line 155, unix : else if nbheur = 0 then e_eqtp_vrtt = min(1,duree/360);
- Line 327, windows : OUTFILE = "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\calibration_wagebins_lp02&year..dta"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/3_STATA_PREPROCESSING_ORGA/04_build_policy_parameter_grid.do**

- Line 7, windows : global OUT "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\GENERIC"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW.m**

- Line 44, unix : % prepare matrices/arrays for cost and marginal cost

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_worker_level_data.sas**

- Line 82, unix : else if nbheur = 0 then e_eqtp_vrtt = min(1,duree/360);
- Line 184, windows : OUTFILE = "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\Dworkerlevel_lp02&year..dta"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_h.m**

- Line 46, unix : % prepare matrices/arrays for cost and marginal cost

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/01_build_rtt_gmr_assignments.sas**

- Line 25, windows : %include "&root\code\Tools\00_resolve_casd_paths.sas";
- Line 28, windows : libname out2 "&root\output\generated\Output_data\For_1_SAS_DADS\GMR";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2007.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/02_build_figure1_minimum_wage_paths.do**

- Line 7, windows : cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
- Line 9, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_apply_common_restrictions.do"
- Line 17, windows : graph export "$root\output\generated\Output_graphs\figure_01_panel_b.pdf", replace
- Line 18, windows : cd "$root\output\generated\Output_graphs\CD"
- Line 19, windows : import excel "$root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx", sheet("CLEAN") firstrow clear
- Line 24, windows : import excel "$root\data\public\original\For_4_SAS_ORGANIZATIONS\baremes_IPP.xlsx", sheet("CLEAN") firstrow clear
- Line 30, unix : gen double GMR1_H_def = GMR1_M/169
- Line 32, unix : gen double GMR2_H_def = GMR2_M/169
- Line 34, unix : gen double GMR3_H = GMR3_M/169
- Line 36, unix : gen double GMR4_H = GMR4_M/169
- Line 38, unix : gen double GMR5_H = GMR5_M/169
- Line 51, windows : graph export "$root\output\generated\Output_graphs\figure_01_panel_a.pdf", replace

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 154, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 159, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 162, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/13_run_ddd_iv.do**

- Line 4, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/04_SAS_EXTRACT_DADS_JOBS.sas**

- Line 20, windows : %include "&root\code\Programs\1_SAS_DADS\02_extract_dads_jobs.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\04_SAS_EXTRACT_DADS_JOBS.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 4/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\04_SAS_EXTRACT_DADS_JOBS.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/3_STATA_PREPROCESSING_ORGA/01_prepare_training_2483.do**

- Line 7, windows : global OUT "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\FP"
- Line 23, windows : use siren honq02 hoq02 hemp02 hpi02 hcad02 using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2002", clear
- Line 37, windows : use SIREN OHTOT03 HTOT03 using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2003", clear
- Line 45, windows : use SIREN heurcad heurpi heuremp heuro heurform using "$root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2004", clear

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/08_SAS_EXTRACT_DADS_1993_CALIBRATION.sas**

- Line 20, windows : %include "&root\code\Programs\2_SAS_OTHER\03_extract_dads_1993_calibration.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\08_SAS_EXTRACT_DADS_1993_CALIBRATION.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 8/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\08_SAS_EXTRACT_DADS_1993_CALIBRATION.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/Cal_Iter.m**

- Line 44, unix : N = 150 + last_alpha/10;
- Line 83, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 228, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 231, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 322, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Figures A2-A3/Code/Graphs_UNCERTAINTY_Bloom_v1.R**

- Line 8, unix : # Downloaded 25/03/2025

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_1996.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/Cal_Iter.m**

- Line 44, unix : N = 150 + last_alpha/10;
- Line 83, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 228, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 231, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 322, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_compute_calibration_moments.do**

- Line 6, windows : cd "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION"
- Line 9, windows : use "$root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta", clear
- Line 14, windows : save "$root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta", replace
- Line 22, windows : merge m:1 siren using "$root\output\generated\Output_data\For_2_SAS_OTHER\DADS_93\calibration_4NEWFIRM_LST_DADS1993.dta"
- Line 60, unix : gen share_l3 = totlayer3/totsample_firms
- Line 61, unix : gen share_l4 = totlayer4/totsample_firms
- Line 62, unix : replace totpostes_l3 = totpostes_l3/totlayer3
- Line 63, unix : replace totpostes_l4 = totpostes_l4/totlayer4
- Line 67, unix : forvalues l = 1/4 {
- Line 74, unix : forvalues l = 1/4 {
- Line 81, unix : forvalues l = 1/4 {
- Line 84, unix : gen shtotpostes_layer`l'_clean = totpostes_layer`l'_clean/MACRO_totpostes
- Line 88, unix : forvalues l = 1/4 {
- Line 91, unix : gen shtothrs_layer`l'_clean = tothrs_layer`l'_clean/MACRO_tothrs
- Line 95, windows : esttab using "$root\output\generated\Output_moments\table_05_data_moments.csv", replace csv main(mean) aux(sd) nostar unstack noobs label addnote("Main data moments for 2006")
- Line 104, unix : gen sharenewfirms = totnewfirms/totfirms
- Line 107, unix : gen sharenewfirms_postes = totnewfirms_postes/totfirms_postes
- Line 110, unix : gen sharenewfirms_hrs = totnewfirms_hrs/totfirms_hrs
- Line 112, windows : esttab using "$root\output\generated\Output_moments\table_05_data_moments.csv", append csv main(mean) aux(sd) nostar unstack noobs label addnote("New Firms From 1993")
- Line 118, windows : use "$root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\STATA\calibration_wagebins_lp022006.dta", clear
- Line 145, unix : gen share_postes_mw11 = totcum_postes_mw11/tottotpostes
- Line 146, unix : gen share_hrs_mw11 = totcum_hrs_mw11/tottothrs
- Line 147, unix : gen share_postes_supmw11 = totcum_postes_supmw11/tottotpostes
- Line 148, unix : gen share_hrs_supmw11 = totcum_hrs_supmw11/tottothrs
- Line 158, unix : gen share_postes_mw11_v2 = totcum_postes_mw11_v2/tottotpostes
- Line 159, unix : gen share_hrs_mw11_v2 = totcum_hrs_mw11_v2/tottothrs
- Line 160, unix : gen share_postes_supmw11_v2 = totcum_postes_supmw11_v2/tottotpostes
- Line 161, unix : gen share_hrs_supmw11_v2 = totcum_hrs_supmw11_v2/tottothrs

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Main.m**

- Line 38, unix : cd MWResults_Technology_Output32/Scenarios
- Line 48, unix : cd ../../MWResults_Technology_Output64/Scenarios
- Line 58, unix : cd ../../MWResults_Technology_Output96/Scenarios

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/3_STATA_PREPROCESSING_ORGA/02_prepare_national_accounts_deflators.do**

- Line 7, windows : global OUT "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\CN"
- Line 8, windows : global IN  "$root\data\public\original\For_3_STATA_PREPROCESSING"
- Line 13, windows : import excel "${IN}\NOMENCLATURES_INSEE\table_NAF2-NA.xls", sheet("All_levels") firstrow clear
- Line 20, windows : import delimited "${IN}\PRODUCTION_2019_11_05_CNBRANCHES\caract.csv", delimiter(";") encoding(utf8) clear
- Line 36, windows : import delimited "${IN}\PRODUCTION_2019_11_05_CNBRANCHES\valeurs_annuelles.csv", delimiter(";") encoding(utf8) clear
- Line 37, unix : forvalues x = 4/73 {
- Line 68, windows : import excel "${IN}\NOMENCLATURES_INSEE\table_NAF2-NA.xls", sheet("All_levels") firstrow clear
- Line 76, windows : import delimited "${IN}\CAPITAL_2019_11_05_CNBRANCHES\caract.csv", delimiter(";") encoding(utf8) clear
- Line 89, windows : import delimited "${IN}\CAPITAL_2019_11_05_CNBRANCHES\valeurs_annuelles.csv", delimiter(";") encoding(utf8) clear
- Line 90, unix : forvalues x = 4/44 {
- Line 104, unix : forvalues x = 4/44 {
- Line 126, windows : use APENREV1 APENREV2 using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2008", clear
- Line 139, windows : use SIREN APE using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2002", clear
- Line 146, windows : use SIREN APE using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2003", clear
- Line 169, windows : use APE N114 using "$root\output\generated\Output_data\For_2_SAS_OTHER\NOM\NOM_2002", clear
- Line 186, windows : import excel "${IN}\NOMENCLATURES_NAF\NES_N114_old.xls", sheet("Feuil1") firstrow clear
- Line 196, windows : import excel "${IN}\CAPITAL_DURATION\Comptabilite_Nationale_05112019.xlsx", sheet("Durations") firstrow clear

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/ProfitMaximizationMW_GE.m**

- Line 34, unix : N = 150 + last_alpha/10;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_1999.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 281, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.sas**

- Line 26, windows : libname _mwlg "&root\output\logs";
- Line 28, windows : libname _mwtm "&root\output\logs\timings";
- Line 33, windows : %include "&root\code\Programs\7_SAS_APPENDIX_G\01_compute_table_g1_zero_layer_moment.sas";
- Line 40, windows : filename mwtim "&root\output\logs\timings\10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.txt";
- Line 60, windows : %put NOTE: Timing file: &root\output\logs\timings\16_SAS_TABLE_G1_ZERO_LAYER_MOMENT.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_2004.sas**

- Line 4, windows : %include "&root\code\manual\12A_SAS_BUILD_ORGANIZATION\12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas";

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 76, unix : diff = output_h/output-1.032
- Line 87, unix : diff = output_c/output-1.032
- Line 98, unix : diff = output_l/output-1.032
- Line 109, unix : diff = output_A/output-1.032

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 224, unix : rownames = {'Minimum Wage/k';'Change in firm size';'Change in firm size for survivors';'Change in firm size for survivors (contribution of change)';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/11_run_ddd_ols.do**

- Line 4, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_run_regression_family.do"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/Calibration.m**

- Line 50, unix : % minimum/mean ratio (replaces average wage)
- Line 111, unix : N = 150 + last_alpha/10;
- Line 152, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 301, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 304, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 399, unix : fs_w = ga_z/sum(ga_z);
- Line 411, unix : mw_mean_r = mw/dot(w_dist(:,1),w_dist(:,2));
- Line 424, unix : TableG1_vii = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/av_wage_r;mod_par(4:6,1)],3)],...
- Line 425, unix : {'teachers';'new firms';'share 2-layer';'share 3-layer';'size';'size 2-layer';'size 3-layer';'mw/aw';'share bound'},[round(tm(1:4,1),3);round(tm(5:7,1),2);round(tm(8:9,1),3)],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 76, unix : diff = output_h/output-1.096
- Line 87, unix : diff = output_c/output-1.096
- Line 98, unix : diff = output_l/output-1.096
- Line 109, unix : diff = output_A/output-1.096

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/06_SAS_EXTRACT_FICUS_ACCOUNTS.sas**

- Line 20, windows : %include "&root\code\Programs\2_SAS_OTHER\01_extract_ficus_accounts.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\06_SAS_EXTRACT_FICUS_ACCOUNTS.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 6/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\06_SAS_EXTRACT_FICUS_ACCOUNTS.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_6_legFigG1.R**

- Line 58, unix : WORKERS         = `Workers/managers`,

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/02_extract_training_2483.sas**

- Line 24, windows : %include "&root\code\Tools\00_resolve_casd_paths.sas";
- Line 34, windows : outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2002.dta"; run;
- Line 36, windows : outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2003.dta"; run;
- Line 38, windows : outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2004.dta"; run;
- Line 40, windows : outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2005.dta"; run;
- Line 42, windows : outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2006.dta"; run;
- Line 44, windows : outfile="&root\output\generated\Output_data\For_2_SAS_OTHER\FP_STATA\FP2007.dta"; run;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 183, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 186, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 285, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 159, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 162, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 163, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 166, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/PMMW_GE.m**

- Line 33, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 302, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 165, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 168, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 235, unix : % effect on within-firm inequality (top/bottom)
- Line 448, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/00_run_regression_analysis.do**

- Line 12, windows : use "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\data_lp02_analysis.dta", clear
- Line 14, windows : merge m:1 siren year using "$root\output\generated\Output_data\For_5_STATA_FINAL_DATA_CONSTRUCTION\TFP\TFP_lp02_analysis.dta"
- Line 22, windows : do "$root\code\Programs\6_STATA_ANALYSES\01_build_descriptive_tables.do"
- Line 25, windows : use "$root\output\generated\Output_data\For_3_STATA_PREPROCESSING\FP\FP_av_2006", clear
- Line 37, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_apply_common_restrictions.do"
- Line 46, windows : do "$root\code\Programs\6_STATA_ANALYSES\11_run_ddd_ols.do"
- Line 47, windows : do "$root\code\Programs\6_STATA_ANALYSES\10_run_dd_ols.do"
- Line 48, windows : do "$root\code\Programs\6_STATA_ANALYSES\13_run_ddd_iv.do"
- Line 49, windows : do "$root\code\Programs\6_STATA_ANALYSES\12_run_dd_iv.do"
- Line 52, windows : global outreg "$root\output\generated\Output_reg"
- Line 53, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD" "DDD" "tables_01_04_c02_c04.xlsx"
- Line 54, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD_FPonly" "DDD_FPonly" "tables_d09_d11_training_subsample.xlsx"
- Line 55, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD_noGMR5" "DDD_noGMR5" "tables_d05_d08_no_gmr5.xlsx"
- Line 56, windows : do "$root\code\Programs\6_STATA_ANALYSES\functions\fn_export_regression_tables.do" "$outreg" "DD_IV" "DDD_IV" "tables_d01_d04_iv.xlsx"
- Line 66, windows : capture erase "$root\output\generated\Output_reg\`d'\_latex_results.dta"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/FreeEntrySolve_MW.m**

- Line 14, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 159, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 162, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 35, unix : N = 150 + last_alpha/10;
- Line 237, unix : % effect on within-firm inequality (top/bottom)
- Line 450, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...
- Line 496, unix : rownames = {'Net wage k';'Minimum wage relative to k';'Minimum wage relative to mean';'Minimum wage relative to median';'Minimum wage relative to maximum';'Workers/managers';'Share of workers bound';...
- Line 528, unix : rownames = {'Avg firm size';'Layer l0 (jobs)';'Avg # layers';'Avg wage in firms';'Avg wage at l0';'Avg revenue/worker'}

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 33, unix : N = 150 + last_alpha/10;
- Line 235, unix : % effect on within-firm inequality (top/bottom)
- Line 448, unix : 'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/manual/05_SAS_BUILD_MINIMUM_WAGE_INPUTS.sas**

- Line 20, windows : %include "&root\code\Programs\1_SAS_DADS\03_build_minimum_wage_simulation_inputs.sas";
- Line 27, windows : filename mwtim "&root\output\logs\timings\05_SAS_BUILD_MINIMUM_WAGE_INPUTS.txt";
- Line 46, unix : %put NOTE: MANUAL STAGE 5/15 COMPLETED.;
- Line 47, windows : %put NOTE: Timing file: &root\output\logs\timings\05_SAS_BUILD_MINIMUM_WAGE_INPUTS.txt;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 153, unix : % effect on within-firm inequality (top/bottom)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/FreeEntrySolve_MW.m**

- Line 16, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/Calibration.m**

- Line 50, unix : % Kaitz index (minimum/median wage, replaces average wage)
- Line 111, unix : N = 150 + last_alpha/10;
- Line 152, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 301, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 304, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 399, unix : fs_w = ga_z/sum(ga_z);
- Line 411, unix : kaitz_r = mw/median(w_dist(:,2),Weights=w_dist(:,1));
- Line 424, unix : TableG1_vi = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,1);mod_par(9,1)/av_wage_r;mod_par(4:6,1)],3)],...

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Cal_Iter.m**

- Line 47, unix : N = 150 + last_alpha/10;
- Line 86, unix : % prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
- Line 235, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 238, unix : qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
- Line 329, unix : fs_w = ga_z/sum(ga_z);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/ProfitMaxQMW.m**

- Line 70, unix : zn_opt = fminsearch(fc1x,[2;1/h],options);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/ProfitMaximizationMW_GE.m**

- Line 38, unix : N = 150 + last_alpha/10;
- Line 154, unix : % effect on within-firm inequality (top/bottom)

