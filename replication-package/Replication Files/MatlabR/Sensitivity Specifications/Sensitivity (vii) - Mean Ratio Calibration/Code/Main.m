clear all
% define base path (this needs to be reset by other users to fit their computer)
BasePath = 'C:\Users\nicho\Documents\Research\MWO\Paper Drafts\Final JPE Files\Replication Files\MatlabR\Sensitivity Specifications\Sensitivity (vii) - Mean Ratio Calibration';
% define paths for code, data (.mat files) and output
CodePath = fullfile(BasePath, 'Code');
DataPath = fullfile(BasePath, 'Data');
OutputPath = fullfile(BasePath, 'Output');

% run Calibration code, which produces csv file for column vii of Table G1
cd(CodePath)
run('Calibration.m')

% run MWResults code, which produces a csv file which is used to construct
% panel G of Figure G1
cd MWResults
run('ProfitMaximizationMW_GE.m')