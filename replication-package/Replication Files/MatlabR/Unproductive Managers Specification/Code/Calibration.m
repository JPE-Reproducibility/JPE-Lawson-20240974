% program calibrates model parameters as in Caliendo & Rossi-Hansberg
% (2012), solving on each iteration for firm organization and output q to
% maximize profits for each value of alpha
% however, the current file uses a simplified Melitz model
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

% calibrated parameter values:
c = 0.037;
A = 0.739;
gamma = 1.090;
fE = 61.46;
f = 6.24;
mw = 0.202;

% calibration targets
% teach = share of education employees (INSEE 2018)
teach = 0.0982;
% pct_su = share of workers new firms (not existing in 1993)
pct_su = 0.203;
% av_size = average firm size (2006)
av_size = 93.48;
% average wage (2006, expressed in hundreds of Euros)
av_wage = 0.2021;
% size distribution parameter (CRH)
size_dist = -1.095;
% ratio of average wage to k
aw_ratio = 1.141;

% starting value for net wage
k = 0.175

% calibration to minimize norm of percentage deviations
mp_mat = [];
dev_mat = [];
norm_vec = [];
mom_mat = [[teach; pct_su; av_size; av_wage; size_dist; aw_ratio] nan(6,1)];
save(fullfile(DataPath,'Iter_T'),'mp_mat','dev_mat','norm_vec','k','mom_mat');
mod_par0 = [c;A;gamma;fE;f;mw];
fcal = @(mpx)Cal_Iter(mpx,lambda,delta,sigma,teach,pct_su,av_size,av_wage,size_dist,aw_ratio,DataPath);
options = optimset('MaxFunEvals',100000,'MaxIter',100000);
mod_par = fminsearch(fcal,mod_par0,options);

% turn vector mod_par into values of parameters
c = mod_par(1,1);
A = mod_par(2,1);
gamma = mod_par(3,1);
fE = mod_par(4,1);
f = mod_par(5,1);
mw = mod_par(6,1);
load(fullfile(DataPath,'Iter_T'))

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

% solving for k (wage per unit of time) that ensure zero profits
adj = 0.01;
entry = 10;
min_z = max(0,(mw - k)/(c*k));
% loop over k to find the value that satisfies the zero-profit entry
% condition
while abs(entry)>0.000001
    entry = FreeEntrySolve_MW(sigma,k,c,lambda,A,f,fE,alpha_int,ga,delta,min_z);
    k = k + adj*entry
    adj = adj*0.99
    min_z = max(0,(mw - k)/(c*k));
    %pause
end

% define starting guess for z and q
z0 = 4;
% solve for z_opt and phi_opt (constant across alpha)
fz = @(zz)ZSolve(zz,lambda,c);
options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.00000001);
z_opt = max(min_z,fzero(fz,z0,options));
phi_opt = k*(c*z_opt+1)/(A*(1-exp(-lambda*z_opt)));
% solve for q_opt and n_opt
q_opt = alpha_int*k*(sigma*phi_opt/(sigma-1))^(-sigma);
n_opt = q_opt/(A*(1-exp(-lambda*z_opt)));
profit = (q_opt.^((sigma-1)/sigma)).*((alpha_int*k).^(1/sigma)) - n_opt*k*(c*z_opt+1) - k - k*f;

% calculate total mass of workers at each firm
num_work = n_opt*(c*z_opt+1)+1+f;
% calculate zero-profit cutoff for alpha
y = find(profit>0,1);
if y==1
    alpha_bar = 1
elseif max(profit)<0
    alpha_bar = 1000
else
    alpha_bar = alpha_int(y-1,1) - (alpha_int(y,1)-alpha_int(y-1,1))*profit(y-1,1)/(profit(y,1)-profit(y-1,1))
end
% calculate adjusted probability distribution for firms that actually
% operate
ga_z = ga.*(alpha_int>alpha_bar);
% calculate measure of firms M
M = ((1 - interp1(alpha_int,cumsum(ga),alpha_bar)))*(delta*fE + sum(ga_z.*num_work))^(-1)
% calculate net expected profit for a potential entrant
entry = sum(profit.*ga_z)/delta - k*fE

% firm size distribution
fs_w = ga_z/sum(ga_z);
ksdensity(n_opt+1,[floor(min(n_opt(fs_w>0))):0.1:200]','Weights',fs_w);

% calibration targets
teach_r = c*sum(n_opt*z_opt.*ga_z)*(delta*fE + sum(ga_z.*num_work))^(-1);
pct_su_r = (delta*fE)/(delta*fE + sum(ga_z.*num_work)/(sum(fs_w)));
av_size_r = sum(ga_z.*(n_opt+1))/sum(ga_z);
av_wage_r = k*(c*z_opt+1);
reg_inc = (fs_w>0).*(cumsum(fs_w)<0.995);
b = regress(log(1-cumsum(fs_w(reg_inc>0))),[log(n_opt(reg_inc>0)) ones(length(n_opt(reg_inc>0)),1)]);
size_dist_r = b(1,1);
aw_ratio_r = av_wage_r/k;

tm = [teach teach_r; pct_su pct_su_r; av_size av_size_r; av_wage av_wage_r; size_dist size_dist_r; aw_ratio aw_ratio_r];

norm = sqrt(sum(((tm(:,2)-tm(:,1))./min(tm(:,1),tm(:,2))).^2))

% save calibration results to DataPath folder
save(fullfile(DataPath,'CalResults'),'mod_par','tm','norm','k')

% copy calibration results to Table I1 csv file
varnames = {'Parameters','Values','Targets','Data','Model'}
TableI1 = table({'c';'A';'f_E';'f';'mw';'gamma'},[round([mod_par(1:2,1);mod_par(4:6,1);mod_par(3,1)],3)],{'teachers';'new firms';'size';'avg wage';'avg wage/k';'log-log coefficient'},...
    [round(tm(1:2,1),3);round(tm(3,1),2);round(100*tm(4,1),2);round(tm(6,1),3);round(tm(5,1),3)],[round(tm(1:2,2),3);round(tm(3,2),2);round(100*tm(4,2),2);round(tm(6,2),3);round(tm(5,2),3)],'VariableNames',varnames)
writetable(TableI1,fullfile(OutputPath,'TableI1.csv'))