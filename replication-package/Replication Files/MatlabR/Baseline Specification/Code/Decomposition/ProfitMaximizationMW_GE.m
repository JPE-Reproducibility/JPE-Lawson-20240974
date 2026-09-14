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
h = mod_par(2,1);
A = mod_par(3,1);
g2 = mod_par(4,1);
g3 = mod_par(5,1);
g4 = mod_par(6,1);
fE = mod_par(7,1);
f = mod_par(8,1);
mw = mod_par(9,1);

% maximum number of layers
L_max = 3;
% prepare alpha distribution
last_alpha = 2*round(0.5*alpha_max,-1);
% alpha = demand draw (firm productivity) with N points
N = 150 + last_alpha/10;
alpha = zeros(N,1);
for i=1:45
    alpha(i,1) = 0.2*i + 0.9;
end
for i=46:125
    alpha(i,1) = 0.5*i - 12.75;
end
for i=126:150
    alpha(i,1) = 2*i - 201;
end
for i=151:170
    alpha(i,1) = 5*i - 652.5;
end
for i=171:N
    alpha(i,1) = 10*i - 1505;
end

% interpolation grid for alpha (the program solves the profit maximization
% problem for 250 different values of alpha, and then results are
% interpolated across thousands values of alpha using a linear spline)
alpha_int = 1.0005*ones(200000,1);
i = 1;
while max(alpha_int)<1000
    i = i+1;
    alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
end
alpha_int = alpha_int(1:i-1,1);
% spline distribution across alpha
fg1 = @(g1x)Alpha1_Solve(g1x,g2,g3,g4,alpha_int);
g1 = fzero(fg1,-9.13);
ga = exp(spline([1;50;500;1000],[g1;g2;g3;g4],alpha_int));

% create minimum wage vector
mw_vec = [0; mw; 1.02*mw; 1.04*mw; 1.06*mw; 1.08*mw; 1.12*mw; 1.16*mw; 1.20*mw; 1.24*mw];

alpha_bar = nan(length(mw_vec),1);
fs = nan(length(ga),length(mw_vec));
fs_w = nan(length(ga),length(mw_vec));
ga_z = nan(length(ga),length(mw_vec));
k = k*ones(length(mw_vec),1);
L_dist = nan(4,length(mw_vec));
L_star = nan(length(ga),length(mw_vec));
M = nan(length(mw_vec),1);
n_int = nan(length(ga),length(mw_vec)*(L_max+1));
num_fcwork = nan(length(mw_vec),1);
num_self_emp = nan(length(mw_vec),1);
num_teach = nan(length(mw_vec),1);
num_workers = nan(length(mw_vec),1);
output = nan(length(mw_vec),1);
phi_int = nan(length(ga),length(mw_vec));
profit_star = nan(length(ga),length(mw_vec));
q_star = nan(length(ga),length(mw_vec));
w_dist = nan(length(ga)*L_max,2*length(mw_vec));
z_int = nan(length(ga),length(mw_vec)*(L_max+1));
for i=1:length(mw_vec)
    [alpha_bar(i,1),fs(:,i),fs_w(:,i),ga_z(:,i),k(i,1),L_dist(:,i),L_star(:,i),M(i,1),n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i),num_fcwork(i,1),num_self_emp(i,1),num_teach(i,1),num_workers(i,1),output(i,1),phi_int(:,i),profit_star(:,i),q_star(:,i),w_dist(:,2*(i-1)+1:2*i),z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)] = PMMW_GE(alpha_max,L_max,mw_vec(i,1),N,sigma,alpha,k(i,1),c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath);
end
min_z = max(0,(mw_vec - k)./(c*k));
% calculate survivors, entrants and exiters compared to no-MW scenario
fs_w1 = repmat(fs_w(:,1),1,length(mw_vec));
surv = (fs_w.*fs_w1>0);
ent = (fs_w.*(1-surv)>0);
ext = (fs_w1.*(1-surv)>0);
% shares of survivors, entrants and exiters among firms
surv_share1 = sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)));
surv_share2 = sum(fs_w.*q_star.*surv)./sum(fs_w.*q_star);
ent_share = sum(fs_w.*q_star.*ent)./sum(fs_w.*q_star);
ext_share = sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)));
% change in average firm size
afs = dot(fs,fs_w.*q_star)./sum(fs_w.*q_star);
afs_surv1 = dot(repmat(fs(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
afs_surv2 = dot(fs,fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
afs_surv1un = dot(repmat(fs(:,1),1,length(mw_vec)),repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
afs_surv2un = dot(fs,repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
afs_ent = dot(fs,fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
afs_ext = dot(repmat(fs(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);
% comparison of output per firm
aqs = dot(q_star,fs_w.*q_star)./sum(fs_w.*q_star);
aqs_surv1 = dot(repmat(q_star(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
aqs_surv2 = dot(q_star,fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
aqs_surv1un = dot(repmat(q_star(:,1),1,length(mw_vec)),repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
aqs_surv2un = dot(q_star,repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
aqs_ent = dot(q_star,fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
aqs_ext = dot(repmat(q_star(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);
% comparison of productivity (output per worker)
prod = q_star./fs;
apr = dot(prod,fs_w.*q_star)./sum(fs_w.*q_star);
apr_surv1 = dot(repmat(prod(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
apr_surv2 = dot(prod,fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
apr_surv1un = dot(repmat(prod(:,1),1,length(mw_vec)),repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
apr_surv2un = dot(prod,repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
apr_ent = dot(prod,fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
apr_ext = dot(repmat(prod(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);
% comparison in productivity measured by revenue per worker
prod_rev = (((repmat(alpha_int,1,length(mw_vec)).*repmat(k',length(ga_z),1)).^(1/sigma)).*(q_star.^((sigma-1)/sigma)))./fs;
arev = dot(prod_rev,fs_w.*q_star)./sum(fs_w.*q_star);
arev_surv1 = dot(repmat(prod_rev(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
arev_surv2 = dot(prod_rev,fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
arev_surv1un = dot(repmat(prod_rev(:,1),1,length(mw_vec)),repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
arev_surv2un = dot(prod_rev,repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
arev_ent = dot(prod_rev,fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
arev_ext = dot(repmat(prod_rev(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);
% average alpha
alpha_avg = sum(repmat(alpha_int,1,length(mw_vec)).*fs_w.*q_star)./sum(fs_w.*q_star);
alpha_surv1 = dot(repmat(alpha_int,1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
alpha_surv2 = dot(repmat(alpha_int,1,length(mw_vec)),fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
alpha_ent = dot(repmat(alpha_int,1,length(mw_vec)),fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
alpha_ext = dot(repmat(alpha_int,1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);
% average Q-productivity
ac_int = nan(length(ga),length(mw_vec));
for i=1:length(mw_vec)
    ac_int(:,i) = sum(k(i,1)*n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i).*(mod_par(1,1)*z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)+1),2)./q_star(:,i);
end
qprod = repmat(k',length(ga),1)./ac_int;
aqpr = dot(qprod,fs_w.*q_star)./sum(fs_w.*q_star);
aqpr_surv1 = dot(repmat(qprod(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
aqpr_surv2 = dot(qprod,fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
aqpr_surv1un = dot(repmat(qprod(:,1),1,length(mw_vec)),repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
aqpr_surv2un = dot(qprod,repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
aqpr_ent = dot(qprod,fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
aqpr_ext = dot(repmat(qprod(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);
% average profit
profit_avg = sum(profit_star.*fs_w.*q_star)./sum(fs_w.*q_star);
profit_surv1 = dot(repmat(profit_star(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
profit_surv2 = dot(profit_star,fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
profit_surv1un = dot(repmat(profit_star(:,1),1,length(mw_vec)),repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
profit_surv2un = dot(profit_star,repmat(fs_w(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1),1,length(mw_vec)).*surv);
profit_ent = dot(profit_star,fs_w.*q_star.*ent)./sum(fs_w.*q_star.*ent);
profit_ext = dot(repmat(profit_star(:,1),1,length(mw_vec)),repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*ext);

% solve for dynamic Olley-Pakes decompositions of MW effects
% for firm size
afs_c = afs-repmat(afs(1,1),1,10);
afs_c_surv = afs_surv2-afs_surv1;
afs_c_surv_change = afs_surv2un-afs_surv1un;
afs_c_surv_reall = afs_c_surv-afs_c_surv_change;
afs_c_ent = ent_share.*(afs_ent-afs_surv2);
afs_c_ext = ext_share.*(afs_surv1-afs_ext);
% for output per firm
aqs_c = aqs-repmat(aqs(1,1),1,10);
aqs_c_surv = aqs_surv2-aqs_surv1;
aqs_c_surv_change = aqs_surv2un-aqs_surv1un;
aqs_c_surv_reall = aqs_c_surv-aqs_c_surv_change;
aqs_c_ent = ent_share.*(aqs_ent-aqs_surv2);
aqs_c_ext = ext_share.*(aqs_surv1-aqs_ext);
% for output per worker
apr_c = apr-repmat(apr(1,1),1,10);
apr_c_surv = apr_surv2-apr_surv1;
apr_c_surv_change = apr_surv2un-apr_surv1un;
apr_c_surv_reall = apr_c_surv-apr_c_surv_change;
apr_c_ent = ent_share.*(apr_ent-apr_surv2);
apr_c_ext = ext_share.*(apr_surv1-apr_ext);
% for revenue per worker
arev_c = arev-repmat(arev(1,1),1,10);
arev_c_surv = arev_surv2-arev_surv1;
arev_c_surv_change = arev_surv2un-arev_surv1un;
arev_c_surv_reall = arev_c_surv-arev_c_surv_change;
arev_c_ent = ent_share.*(arev_ent-arev_surv2);
arev_c_ext = ext_share.*(arev_surv1-arev_ext);
% for alpha
alpha_c = alpha_avg-repmat(alpha_avg(1,1),1,10);
alpha_c_surv = alpha_surv2-alpha_surv1;
alpha_c_ent = ent_share.*(alpha_ent-alpha_surv2);
alpha_c_ext = ext_share.*(alpha_surv1-alpha_ext);
% for Q-productivity
aqpr_c = aqpr-repmat(aqpr(1,1),1,10);
aqpr_c_surv = aqpr_surv2-aqpr_surv1;
aqpr_c_surv_change = aqpr_surv2un-aqpr_surv1un;
aqpr_c_surv_reall = aqpr_c_surv-aqpr_c_surv_change;
aqpr_c_ent = ent_share.*(aqpr_ent-aqpr_surv2);
aqpr_c_ext = ext_share.*(aqpr_surv1-aqpr_ext);
% for profit
profit_c = profit_avg-repmat(profit_avg(1,1),1,10);
profit_c_surv = profit_surv2-profit_surv1;
profit_c_surv_change = profit_surv2un-profit_surv1un;
profit_c_surv_reall = profit_c_surv-profit_c_surv_change;
profit_c_ent = ent_share.*(profit_ent-profit_surv2);
profit_c_ext = ext_share.*(profit_surv1-profit_ext);

% % explicit Olley-Pakes decomposition for reallocation effect (confirmed to
% % be identical to residual approach)
% swS0 = (repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv)./sum(repmat(fs_w(:,1).*q_star(:,1),1,length(mw_vec)).*surv);
% swS1 = (fs_w.*q_star.*surv)./sum(fs_w.*q_star.*surv);
% s_bar = (fs_w.*surv)./sum(fs_w.*surv);
% OP0 = sum((swS0 - s_bar).*(repmat(profit_star(:,1),1,length(mw_vec)) - profit_surv1un));
% OP1 = sum((swS1 - s_bar).*(profit_star - profit_surv2un));
% C_reall = OP1 - OP0
% profit_c_surv_reall

% prepare table of decompositions
rownames = {'Minimum Wage/k';'Change in firm size';'Change in firm size for survivors';'Change in firm size for survivors (contribution of change)';...
    'Change in firm size for survivors (reallocation)';'Change in firm size for entrants';'Change in firm size for exiters';...
    'Change in output per firm';'Change in output per firm for survivors';'Change in output per firm for survivors (contribution of change)';...
    'Change in output per firm for survivors (reallocation)';'Change in output per firm for entrants';'Change in output per firm for exiters';...
    'Change in output per worker';'Change in output per worker for survivors';'Change in output per worker for survivors (contribution of change)';...
    'Change in output per worker for survivors (reallocation)';'Change in output per worker for entrants';'Change in output per worker for exiters';...
    'Change in revenue per worker';'Change in revenue per worker for survivors';'Change in revenue per worker for survivors (contribution of change)';...
    'Change in revenue per worker for survivors (reallocation)';'Change in revenue per worker for entrants';'Change in revenue per worker for exiters';...
    'Change in average alpha';'Change in average alpha for survivors';'Change in average alpha for entrants';'Change in average alpha for exiters';...
    'Change in Q-productivity';'Change in Q-productivity for survivors';'Change in Q-productivity for survivors (contribution of change)';...
    'Change in Q-productivity for survivors (reallocation)';'Change in Q-productivity for entrants';'Change in Q-productivity for exiters';...
    'Change in average profit';'Change in average profit for survivors';'Change in average profit for survivors (contribution of change)';...
    'Change in average profit for survivors (reallocation)';'Change in average profit for entrants';'Change in average profit for exiters'};
varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% higher','20% higher','24% higher'};
T = array2table([mw_vec'./k';afs_c;afs_c_surv;afs_c_surv_change;afs_c_surv_reall;afs_c_ent;afs_c_ext;...
    aqs_c;aqs_c_surv;aqs_c_surv_change;aqs_c_surv_reall;aqs_c_ent;aqs_c_ext;...
    apr_c;apr_c_surv;apr_c_surv_change;apr_c_surv_reall;apr_c_ent;apr_c_ext;...
    arev_c;arev_c_surv;arev_c_surv_change;arev_c_surv_reall;arev_c_ent;arev_c_ext;...
    alpha_c;alpha_c_surv;alpha_c_ent;alpha_c_ext;...
    aqpr_c;aqpr_c_surv;aqpr_c_surv_change;aqpr_c_surv_reall;aqpr_c_ent;aqpr_c_ext;...
    profit_c;profit_c_surv;profit_c_surv_change;profit_c_surv_reall;profit_c_ent;profit_c_ext],'VariableNames',varnames,'RowNames',rownames);
% set desired precision in terms of the number of decimal places
n_decimal = 4;
new_T = varfun(@(x) num2str(x, ['%' sprintf('.%df', n_decimal)]), T);
new_T.Properties.VariableNames = T.Properties.VariableNames;
new_T.Properties.RowNames = T.Properties.RowNames;
new_T
writetable(new_T,fullfile(OutputPath,'Figure7.csv'),'WriteRowNames',true)