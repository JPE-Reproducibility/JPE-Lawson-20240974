% program solves for firm organization AND output q to maximize profits
% given minimum wage mw for each value of alpha
% GENERAL EQUILIBRIUM VERSION
clearvars -except CodePath DataPath OutputPath

% parameters chosen from literature or data or normalized:
% sigma (elasticity of substitution in utility) = 3.8 (literature)
% delta (firm death rate) = 0.266 (DADS)
% lambda (problem dispersion) = 1 (normalization implicit in CR-H)
% alpha_max = maximum value of alpha
sigma = 3.8;
delta = 0.266;
lambda = 1;
alpha_max = 1000;

% calibrated parameter values (including equilibrium value of k):
load(fullfile(DataPath,'CalResults'))
c = mod_par(1,1);
A = mod_par(2,1);
gamma = mod_par(3,1);
fE = mod_par(4,1);
f = mod_par(5,1);
mw = mod_par(6,1);

% grid for alpha (using Pareto distribution)
alpha_int = 1.0005*ones(200000,1);
i = 1;
while max(alpha_int)<1000
    i = i+1;
    alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
end
ga = (alpha_int(2:i,1)-alpha_int(1:i-1,1))*gamma.*(alpha_int(2:i,1).^(-gamma-1));
alpha_int = alpha_int(1:i-1,1);
ga = ga/sum(ga);

% create minimum wage vector
mw_vec = [mw*0.98; mw*0.99; mw; 1.0025*mw; 1.005*mw; 1.0075*mw; 1.01*mw; 1.0125*mw; 1.015*mw; 1.02*mw];

alpha_bar = nan(length(mw_vec),1);
fs = nan(length(ga),length(mw_vec));
fs_w = nan(length(ga),length(mw_vec));
ga_z = nan(length(ga),length(mw_vec));
k = k*ones(length(mw_vec),1);
M = nan(length(mw_vec),1);
n_int = nan(length(ga),length(mw_vec));
num_fcwork = nan(length(mw_vec),1);
num_teach = nan(length(mw_vec),1);
num_workers = nan(length(mw_vec),1);
output = nan(length(mw_vec),1);
phi_int = nan(length(mw_vec),1);
profit_star = nan(length(ga),length(mw_vec));
q_star = nan(length(ga),length(mw_vec));
wage = nan(length(mw_vec),1);
z_opt = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    [alpha_bar(i,1),fs(:,i),fs_w(:,i),ga_z(:,i),k(i,1),M(i,1),n_int(:,i),num_fcwork(i,1),num_teach(i,1),num_workers(i,1),output(i,1),phi_int(i,1),profit_star(:,i),q_star(:,i),wage(i,1),z_opt(i,1)] = PMMW_GE(mw_vec(i,1),sigma,k(i,1),c,lambda,A,f,alpha_int,ga,delta,fE);
end
min_z = max(0,(mw_vec - k)./(c*k));
% continuing firms
fs_w2 = repmat(fs_w(:,2),1,length(mw_vec));
cont = (fs_w.*fs_w2>0);
% change in average firm size
afs = dot(fs,fs_w);
% average firm size at baseline for continuing firms
afs_b_cont = dot(repmat(fs(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% comparison of productivity (output per worker)
prod = q_star./fs;
% change in average productivity
apr = dot(prod,fs_w);
% average productivity at baseline for continuing firms
apr_b_cont = dot(repmat(prod(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% comparison in productivity measured by revenue per worker
prod_rev = (((repmat(alpha_int,1,length(mw_vec)).*repmat(k',length(ga),1)).^(1/sigma)).*(q_star.^((sigma-1)/sigma)))./fs;
% change in average revenue per worker
arev = dot(prod_rev,fs_w);
% average revenue per worker at baseline for continuing firms
arev_b_cont = dot(repmat(prod_rev(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% comparison in productivity measured by average cost
ac_int = nan(length(ga),length(mw_vec));
for i=1:length(mw_vec)
    ac_int(:,i) = (k(i,1)*n_int(:,i)*(c*z_opt(i,1)+1)+k(i,1))./q_star(:,i);
end
% change in average of average cost
aac = dot(ac_int,fs_w);
% average of average cost at baseline for continuing firms
aac_b_cont = dot(repmat(ac_int(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% Q-cost index
qcost = aac./k';
% Q-productivity index
qprod = k'.*dot(1./ac_int,fs_w);
% average alpha and profit
alpha_avg = sum(repmat(alpha_int,1,length(mw_vec)).*fs_w);
profit_avg = sum(profit_star.*fs_w);

% prepare table of results
rownames = {'Value of minimum wage';'Average wage';'Minimum value of z^0_L';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';...
    'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'Average firm size';'Average firm size (baseline for continuing)';...
    'Average output per worker';'Average output per worker (baseline for continuing)';'Average revenue per worker';'Average revenue per worker (baseline for continuing)';...
    'Average of average cost';'Average of average cost (baseline for continuing)';'Average Q-cost index';'Average Q-productivity index';'Marginal cost'};
varnames = {'2% lower','1% lower','Baseline','0.25% higher','0.5% higher','0.75% higher','1% higher','1.25% higher','1.5% higher','2% higher'};
T = array2table([mw_vec';wage';min_z';M';k';alpha_bar';alpha_avg;output';profit_avg;num_fcwork';num_teach';num_workers';afs;afs_b_cont;apr;apr_b_cont;arev;arev_b_cont;aac;aac_b_cont;...
    qcost;qprod;phi_int'],'VariableNames',varnames,'RowNames',rownames);
% set desired precision in terms of the number of decimal places
n_decimal = 4;
new_T = varfun(@(x) num2str(x, ['%' sprintf('.%df', n_decimal)]), T);
new_T.Properties.VariableNames = T.Properties.VariableNames;
new_T.Properties.RowNames = T.Properties.RowNames;
new_T
writetable(new_T,fullfile(OutputPath,'FigureI1.csv'),'WriteRowNames',true)