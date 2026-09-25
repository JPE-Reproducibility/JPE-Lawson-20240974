clear all
% define base path (this needs to be reset by other users to fit their computer)
BasePath = '/files/JPE-Lawson-20240974/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only';
% define paths for code, data (.mat files) and output
CodePath = fullfile(BasePath, 'Code');
DataPath = fullfile(BasePath, 'Data');
OutputPath = fullfile(BasePath, 'Output');

% run Calibration code, which produces csv file for column i of Table G1
cd(CodePath)
run('Calibration.m')

% run MWResults code, which produces a csv file which is used to construct
% panel A of Figure G1
cd MWResults
run('ProfitMaximizationMW_GE.m')