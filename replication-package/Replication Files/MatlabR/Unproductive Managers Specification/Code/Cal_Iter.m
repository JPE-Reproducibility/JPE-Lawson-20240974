function norm = Cal_Iter(mpx,lambda,delta,sigma,teach,pct_su,av_size,av_wage,size_dist,aw_ratio,DataPath)
% this function calculates the calibration moments and compares them to the
% calibration targets, calculating the sum of squared percentage deviations
% in the variable "norm"

% turn vector mpx into values of parameters
c = mpx(1,1);
A = mpx(2,1);
gamma = mpx(3,1);
fE = mpx(4,1);
f = mpx(5,1);
mw = mpx(6,1);
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
% add new parameter vector to matrix mp_mat
load(fullfile(DataPath,'Iter_T'))
mp_mat = [mp_mat mpx];
k = 0.175;
save(fullfile(DataPath,'Iter_T'),'mp_mat','dev_mat','norm_vec','k','mom_mat');
% solving for k (wage per unit of time) that ensure zero profits
adj = 0.01;
entry = 10;
min_z = max(0,(mw - k)/(c*k));
% loop over k to find the value that satisfies the zero-profit entry
% condition
nl = 0;
while abs(entry)>0.000001 && nl<50
    entry = FreeEntrySolve_MW(sigma,k,c,lambda,A,f,fE,alpha_int,ga,delta,min_z);
    k = k + adj*entry
    adj = adj*0.99;
    min_z = max(0,(mw - k)/(c*k));
    nl = nl + 1;
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
if abs(entry)>0.000001
    norm = NaN;
end
% calibration to minimize norm of percentage deviations
dev_mat = [dev_mat [tm(:,2)-tm(:,1)]];
norm_vec = [norm_vec; norm];
mom_mat = [mom_mat tm(:,2)];
save(fullfile(DataPath,'Iter_T'),'mp_mat','dev_mat','norm_vec','k','mom_mat');

end