clear all
% define base path (this needs to be reset by other users to fit their computer)
BasePath = 'C:\Users\nicho\Documents\Research\MWO\Paper Drafts\Final JPE Files\Replication Files\MatlabR\Unproductive Managers Specification';
% define paths for code, data (.mat files) and output
CodePath = fullfile(BasePath, 'Code');
DataPath = fullfile(BasePath, 'Data');
OutputPath = fullfile(BasePath, 'Output');

% run Calibration code, which produces Table I1 csv file
cd(CodePath)
run('Calibration.m')

% run MWResults code, which produces a csv file which is used to construct
% panel A of Figure I1
cd MWResults
run('ProfitMaximizationMW_GE.m')