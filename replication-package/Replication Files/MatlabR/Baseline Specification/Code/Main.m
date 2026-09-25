clear all
% define base path (this needs to be reset by other users to fit their computer)
BasePath = '/files/JPE-Lawson-20240974/replication-package/Replication Files/MatlabR/Baseline Specification';
% define paths for code, data (.mat files) and output
CodePath = fullfile(BasePath, 'Code');
DataPath = fullfile(BasePath, 'Data');
OutputPath = fullfile(BasePath, 'Output');

% run Calibration code, which produces Table 5 csv file
cd(CodePath)
run('Calibration.m')

% run AlphaFigures code, which produces PDFs for Figure F1
cd AlphaFigures
run('ProfitMaximizationMW_GE.m')

% run CR-HFigures code, which produces PDFs for Figures 3, 4, and 5
cd ../CR-HFigures
run('CostMinimizationMW.m')
run('CostMinimizationMW_A.m')
run('CostMinimizationMW_c.m')
run('CostMinimizationMW_h.m')
run('CostMinimizationMW_lambda.m')
run('CostMinimizationMW_mw.m')

% run Decomposition code, which produces csv file used to construct Figure
% 7
cd ../Decomposition
run('ProfitMaximizationMW_GE.m')

% run MWResults code, which produces a csv file which is used to construct
% Figure 6, as well as the csv files for Tables 6, F1, and F2
cd ../MWResults
run('ProfitMaximizationMW_GE.m')

% run MWResults_Technology_Output32 (and 64 and 96) code, which produces
% csv files which are used to construct Figures 8 and F2
cd MWResults_Technology_Output32/Scenarios
run('ProfitMaximizationMW_GE.m')
cd ../Lambda_Large
run('ProfitMaximizationMW_GE.m')
cd ../H_Small
run('ProfitMaximizationMW_GE.m')
cd ../C_Small
run('ProfitMaximizationMW_GE.m')
cd ../A_Large
run('ProfitMaximizationMW_GE.m')
cd ../../MWResults_Technology_Output64/Scenarios
run('ProfitMaximizationMW_GE.m')
cd ../Lambda_Large
run('ProfitMaximizationMW_GE.m')
cd ../H_Small
run('ProfitMaximizationMW_GE.m')
cd ../C_Small
run('ProfitMaximizationMW_GE.m')
cd ../A_Large
run('ProfitMaximizationMW_GE.m')
cd ../../MWResults_Technology_Output96/Scenarios
run('ProfitMaximizationMW_GE.m')
cd ../Lambda_Large
run('ProfitMaximizationMW_GE.m')
cd ../H_Small
run('ProfitMaximizationMW_GE.m')
cd ../C_Small
run('ProfitMaximizationMW_GE.m')
cd ../A_Large
run('ProfitMaximizationMW_GE.m')