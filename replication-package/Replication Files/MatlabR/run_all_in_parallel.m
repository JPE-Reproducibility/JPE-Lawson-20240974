folders = {'Baseline Specification/Code', 'Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code', 'Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code', 'Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code', 'Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code', 'Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code', 'Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code', 'Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code', 'Unemployment Specification/Code', 'Unproductive Managers Specification/Code'};
addpath('/files/JPE-Lawson-20240974/replication-package/Replication Files/MatlabR')
parpool(4)

parfor i = 1:10

    scriptPath = fullfile('/files/JPE-Lawson-20240974/replication-package/Replication Files/MatlabR', folders{i}, 'Main.m');
    runMainScript(scriptPath)
end