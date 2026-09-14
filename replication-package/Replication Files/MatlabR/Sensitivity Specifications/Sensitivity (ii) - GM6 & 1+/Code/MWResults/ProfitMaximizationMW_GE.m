% program solves for firm organization AND output q to maximize profits
% given minimum wage mw for each value of alpha
% GENERAL EQUILIBRIUM VERSION
clearvars -except CodePath DataPath OutputPath

% parameters chosen from literature or data or normalized:
% sigma (elasticity of substitution in utility) = 3.8 (literature)
% delta (firm death rate) = 0.370 (DADS)
% lambda (problem dispersion) = 1 (normalization implicit in CR-H)
% alpha_max = maximum value of alpha
sigma = 3.8;
delta = 0.370;
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
g1 = fzero(fg1,-9.32);
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
% average wages
av_wage = nan(length(mw_vec),1);
med_wage = nan(length(mw_vec),1);
max_wage = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    av_wage(i,1) = 100*dot(w_dist(:,2*(i-1)+1),w_dist(:,2*i));
    med_wage(i,1) = 100*median(w_dist(:,2*i),Weights=w_dist(:,2*(i-1)+1));
    max_wage(i,1) = 100*max(w_dist(:,2*i));
end
mw_avw = 100*mw_vec./av_wage;
mw_avw(1,1) = 100*k(1,1)/av_wage(1,1);
mw_medw = 100*mw_vec./med_wage;
mw_medw(1,1) = 100*k(1,1)/med_wage(1,1);
mw_maxw = 100*mw_vec./max_wage;
mw_maxw(1,1) = 100*k(1,1)/max_wage(1,1);
% average wage in different layers
av_wage_l0 = nan(length(mw_vec),1);
av_wage_l1 = nan(length(mw_vec),1);
av_wage_l2 = nan(length(mw_vec),1);
av_wage_L1 = nan(length(mw_vec),1);
av_wage_L2 = nan(length(mw_vec),1);
av_wage_l0_L2 = nan(length(mw_vec),1);
av_wage_l1_L2 = nan(length(mw_vec),1);
av_wage_L3 = nan(length(mw_vec),1);
av_wage_l0_L3 = nan(length(mw_vec),1);
av_wage_l1_L3 = nan(length(mw_vec),1);
av_wage_l2_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    wd1 = w_dist(:,2*(i-1)+1);
    wd2 = w_dist(:,2*i);
    Ls1 = repelem(L_star(:,i)==2,L_max);
    Ls2 = repelem(L_star(:,i)==3,L_max);
    Ls3 = repelem(L_star(:,i)==4,L_max);
    l0 = repmat([1;0;0],length(L_star),1);
    l1 = repmat([0;1;0],length(L_star),1);
    l2 = repmat([0;0;1],length(L_star),1);
    av_wage_l0(i,1) = 100*dot(wd1.*l0,wd2)/sum(wd1.*l0);
    av_wage_l1(i,1) = 100*dot(wd1.*l1,wd2)/sum(wd1.*l1);
    av_wage_l2(i,1) = 100*dot(wd1.*l2,wd2)/sum(wd1.*l2);
    av_wage_L1(i,1) = 100*dot(wd1.*Ls1,wd2)/sum(wd1.*Ls1);
    av_wage_L2(i,1) = 100*dot(wd1.*Ls2,wd2)/sum(wd1.*Ls2);
    av_wage_l0_L2(i,1) = 100*dot(wd1.*l0.*Ls2,wd2)/sum(wd1.*l0.*Ls2);
    av_wage_l1_L2(i,1) = 100*dot(wd1.*l1.*Ls2,wd2)/sum(wd1.*l1.*Ls2);
    av_wage_L3(i,1) = 100*dot(wd1.*Ls3,wd2)/sum(wd1.*Ls3);
    av_wage_l0_L3(i,1) = 100*dot(wd1.*l0.*Ls3,wd2)/sum(wd1.*l0.*Ls3);
    av_wage_l1_L3(i,1) = 100*dot(wd1.*l1.*Ls3,wd2)/sum(wd1.*l1.*Ls3);
    av_wage_l2_L3(i,1) = 100*dot(wd1.*l2.*Ls3,wd2)/sum(wd1.*l2.*Ls3);
end
% average entrepreneur skill, overall and by layer
av_mz_overall = nan(length(mw_vec),1);
av_mz_L1 = nan(length(mw_vec),1);
av_mz_L2 = nan(length(mw_vec),1);
av_mz_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    en_skill = max(z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*(i-1)+4),[],2);
    av_mz_overall(i,1) = sum(en_skill.*fs_w(:,i));
    av_mz_L1(i,1) = sum(z_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)==2))/sum(fs_w(:,i).*(L_star(:,i)==2));
    av_mz_L2(i,1) = sum(z_int(:,(L_max+1)*(i-1)+3).*fs_w(:,i).*(L_star(:,i)==3))/sum(fs_w(:,i).*(L_star(:,i)==3));
    av_mz_L3(i,1) = sum(z_int(:,(L_max+1)*(i-1)+4).*fs_w(:,i).*(L_star(:,i)==4))/sum(fs_w(:,i).*(L_star(:,i)==4));
end
% average entrepreneurial wage, overall and by layer
av_mw_overall = k.*(c*av_mz_overall+1);
av_mw_L1 = k.*(c*av_mz_L1+1);
av_mw_L2 = k.*(c*av_mz_L2+1);
av_mw_L3 = k.*(c*av_mz_L3+1);
% continuing firms
fs_w2 = repmat(fs_w(:,2),1,length(mw_vec));
cont = (fs_w.*fs_w2>0);
% comparison of layer percentages among continuing firms
Ld_con = zeros(length(L_dist(:,1)),length(mw_vec));
for j=1:length(L_dist(:,1))
    Ld_con(j,:) = sum(ga_z.*repmat((L_star(:,2)==j),1,length(mw_vec)).*cont)./sum(ga_z.*cont);
end
% change in average firm size
afs = dot(fs,fs_w);
% average firm size at baseline for continuing firms
afs_b_cont = dot(repmat(fs(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% firm size by layer
afs_L1 = nan(length(mw_vec),1);
afs_L2 = nan(length(mw_vec),1);
afs_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    afs_L1(i,1) = sum(fs_w(:,i).*fs(:,i).*(L_star(:,i)==2).*(L_star(:,2)==2))/sum(fs_w(:,i).*(L_star(:,i)==2).*(L_star(:,2)==2));
    afs_L2(i,1) = sum(fs_w(:,i).*fs(:,i).*(L_star(:,i)==3).*(L_star(:,2)==3))/sum(fs_w(:,i).*(L_star(:,i)==3).*(L_star(:,2)==3));
    afs_L3(i,1) = sum(fs_w(:,i).*fs(:,i).*(L_star(:,i)==4).*(L_star(:,2)==4))/sum(fs_w(:,i).*(L_star(:,i)==4).*(L_star(:,2)==4));
end
% size of each layer in all firms of at least that many layers
als_l0 = nan(length(mw_vec),1);
als_l1 = nan(length(mw_vec),1);
als_l2 = nan(length(mw_vec),1);
als_l3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    als_l0(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+1).*(L_star(:,i)>=1).*(L_star(:,2)>=1))/sum(fs_w(:,i).*(L_star(:,i)>=1).*(L_star(:,2)>=1));
    als_l1(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+2).*(L_star(:,i)>=2).*(L_star(:,2)>=2))/sum(fs_w(:,i).*(L_star(:,i)>=2).*(L_star(:,2)>=2));
    als_l2(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+3).*(L_star(:,i)>=3).*(L_star(:,2)>=3))/sum(fs_w(:,i).*(L_star(:,i)>=3).*(L_star(:,2)>=3));
    als_l3(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+4).*(L_star(:,i)>=4).*(L_star(:,2)>=4))/sum(fs_w(:,i).*(L_star(:,i)>=4).*(L_star(:,2)>=4));
end
% size of each layer in all firms of specific numbers of layers
als_l0_L1 = nan(length(mw_vec),1);
als_l0_L2 = nan(length(mw_vec),1);
als_l0_L3 = nan(length(mw_vec),1);
als_l1_L1 = nan(length(mw_vec),1);
als_l1_L2 = nan(length(mw_vec),1);
als_l1_L3 = nan(length(mw_vec),1);
als_l2_L2 = nan(length(mw_vec),1);
als_l2_L3 = nan(length(mw_vec),1);
als_l3_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    als_l0_L1(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+1).*(L_star(:,i)==2).*(L_star(:,2)==2))/sum(fs_w(:,i).*(L_star(:,i)==2).*(L_star(:,2)==2));
    als_l0_L2(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+1).*(L_star(:,i)==3).*(L_star(:,2)==3))/sum(fs_w(:,i).*(L_star(:,i)==3).*(L_star(:,2)==3));
    als_l0_L3(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+1).*(L_star(:,i)==4).*(L_star(:,2)==4))/sum(fs_w(:,i).*(L_star(:,i)==4).*(L_star(:,2)==4));
    als_l1_L1(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+2).*(L_star(:,i)==2).*(L_star(:,2)==2))/sum(fs_w(:,i).*(L_star(:,i)==2).*(L_star(:,2)==2));
    als_l1_L2(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+2).*(L_star(:,i)==3).*(L_star(:,2)==3))/sum(fs_w(:,i).*(L_star(:,i)==3).*(L_star(:,2)==3));
    als_l1_L3(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+2).*(L_star(:,i)==4).*(L_star(:,2)==4))/sum(fs_w(:,i).*(L_star(:,i)==4).*(L_star(:,2)==4));
    als_l2_L2(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+3).*(L_star(:,i)==3).*(L_star(:,2)==3))/sum(fs_w(:,i).*(L_star(:,i)==3).*(L_star(:,2)==3));
    als_l2_L3(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+3).*(L_star(:,i)==4).*(L_star(:,2)==4))/sum(fs_w(:,i).*(L_star(:,i)==4).*(L_star(:,2)==4));
    als_l3_L3(i,1) = sum(fs_w(:,i).*n_int(:,4*(i-1)+4).*(L_star(:,i)==4).*(L_star(:,2)==4))/sum(fs_w(:,i).*(L_star(:,i)==4).*(L_star(:,2)==4));
end
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
    ac_int(:,i) = sum(k(i,1)*n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i).*(mod_par(1,1)*z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)+1),2)./q_star(:,i);
end
% change in average of average cost
aac = dot(ac_int,fs_w);
% average of average cost at baseline for continuing firms
aac_b_cont = dot(repmat(ac_int(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% Q-cost index
qcost = aac./k';
% Q-productivity index
qprod = k'.*dot(1./ac_int,fs_w);
% effect on within-firm inequality (top/bottom)
ineq = nan(length(ga),length(mw_vec));
for i=1:length(mw_vec)
    w_int = k(i,1)*(mod_par(1,1)*z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)+1);
    for j=1:length(w_int)
        ineq(j,i) = w_int(j,L_star(j,i))/w_int(j,1);
    end
end
% change in average within-firm inequality
awfi = dot(ineq,fs_w);
% average within-firm inequality at baseline for continuing firms
awfi_b_cont = dot(repmat(ineq(:,2),1,length(mw_vec)),repmat(fs_w(:,2),1,length(mw_vec)).*cont)./sum(repmat(fs_w(:,2),1,length(mw_vec)).*cont);
% percentages of workers and average z in particular layers
num_work_l0 = nan(length(mw_vec),1);
av_z_l0 = nan(length(mw_vec),1);
num_work_l1 = nan(length(mw_vec),1);
av_z_l1 = nan(length(mw_vec),1);
num_work_l2 = nan(length(mw_vec),1);
av_z_l2 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    % percent of l = 0 workers in firms with L>=1
    num_work_l0(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)>1));
    % average z^0_L in firms with L>=1
    av_z_l0(i,1) = sum(z_int(:,(L_max+1)*(i-1)+1).*n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)>1))/sum(n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)>1));
    % percent of l = 1 workers in firms with L>=2
    num_work_l1(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)>2));
    % average z^1_L in firms with L>=2
    av_z_l1(i,1) = sum(z_int(:,(L_max+1)*(i-1)+2).*n_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)>2))/sum(n_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)>2));
    % percent of l = 2 workers in firms with L>=3
    num_work_l2(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+3).*fs_w(:,i).*(L_star(:,i)>3));
    % average z^2_L in firms with L>=3
    av_z_l2(i,1) = sum(z_int(:,(L_max+1)*(i-1)+3).*n_int(:,(L_max+1)*(i-1)+3).*fs_w(:,i).*(L_star(:,i)>3))/sum(n_int(:,(L_max+1)*(i-1)+3).*fs_w(:,i).*(L_star(:,i)>3));
end
% percentages of workers by L and by l given L
nw_L0 = nan(length(mw_vec),1);
nw_L1 = nan(length(mw_vec),1);
nw_L2 = nan(length(mw_vec),1);
nw_L3 = nan(length(mw_vec),1);
nw_l0_L0 = nan(length(mw_vec),1);
nw_l0_L1 = nan(length(mw_vec),1);
nw_l1_L1 = nan(length(mw_vec),1);
nw_l0_L2 = nan(length(mw_vec),1);
nw_l1_L2 = nan(length(mw_vec),1);
nw_l2_L2 = nan(length(mw_vec),1);
nw_l0_L3 = nan(length(mw_vec),1);
nw_l1_L3 = nan(length(mw_vec),1);
nw_l2_L3 = nan(length(mw_vec),1);
nw_l3_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    % percent of workers in firms with L=0
    nw_L0(i,1) = M(i,1)*sum(sum(n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i),2).*fs_w(:,i).*(L_star(:,i)==1));
    % percent of workers in firms with L=1
    nw_L1(i,1) = M(i,1)*sum(sum(n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i),2).*fs_w(:,i).*(L_star(:,i)==2));
    % percent of workers in firms with L=2
    nw_L2(i,1) = M(i,1)*sum(sum(n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i),2).*fs_w(:,i).*(L_star(:,i)==3));
    % percent of workers in firms with L=3
    nw_L3(i,1) = M(i,1)*sum(sum(n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i),2).*fs_w(:,i).*(L_star(:,i)==4));
    % percent of workers in l=0 in firms with L=0
    nw_l0_L0(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)==1));
    % percent of workers in l=0 in firms with L=1
    nw_l0_L1(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)==2));
    % percent of workers in l=1 in firms with L=1
    nw_l1_L1(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)==2));
    % percent of workers in l=0 in firms with L=2
    nw_l0_L2(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)==3));
    % percent of workers in l=1 in firms with L=2
    nw_l1_L2(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)==3));
    % percent of workers in l=2 in firms with L=2
    nw_l2_L2(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+3).*fs_w(:,i).*(L_star(:,i)==3));
    % percent of workers in l=0 in firms with L=3
    nw_l0_L3(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+1).*fs_w(:,i).*(L_star(:,i)==4));
    % percent of workers in l=1 in firms with L=3
    nw_l1_L3(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+2).*fs_w(:,i).*(L_star(:,i)==4));
    % percent of workers in l=2 in firms with L=3
    nw_l2_L3(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*(i-1)+3).*fs_w(:,i).*(L_star(:,i)==4));
    % percent of workers in l=3 in firms with L=3
    nw_l3_L3(i,1) = M(i,1)*sum(n_int(:,(L_max+1)*i).*fs_w(:,i).*(L_star(:,i)==4));
end
% percentage of workers bound by minimum wage, overall and in firms of
% different L
pct_bnd_work = nan(length(mw_vec),1);
pct_bnd_work_L1 = nan(length(mw_vec),1);
pct_bnd_work_L2 = nan(length(mw_vec),1);
pct_bnd_work_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    wd1 = w_dist(:,2*(i-1)+1);
    wd2 = w_dist(:,2*i);
    pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
    Ls1 = repelem(L_star(:,i)==2,L_max);
    pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
    Ls1 = repelem(L_star(:,i)==3,L_max);
    pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
    Ls1 = repelem(L_star(:,i)==4,L_max);
    pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
end
% percentage of firms bound by minimum wage, overall and with different L
pct_bnd_firm = nan(length(mw_vec),1);
pct_bnd_firm_L1 = nan(length(mw_vec),1);
pct_bnd_firm_L2 = nan(length(mw_vec),1);
pct_bnd_firm_L3 = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    fs1 = fs_w(:,i);
    pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
    Ls1 = L_star(:,i)==2;
    pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
    Ls1 = L_star(:,i)==3;
    pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
    Ls1 = L_star(:,i)==4;
    pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
end
% distribution of marginal costs
mean_phi = sum(fs_w.*phi_int);
std_phi = nan(length(mw_vec),1);
iqr_phi = nan(length(mw_vec),1);
min_phi = nan(length(mw_vec),1);
max_phi = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    std_phi(i,1) = std(phi_int(:,i),fs_w(:,i));
    phi_c = sortrows([phi_int(:,i) fs_w(:,i)]);
    p25 = find(cumsum(phi_c(:,2))<=0.25,1,'last');
    p75 = find(cumsum(phi_c(:,2))>=0.75,1);
    iqr_phi(i,1) = phi_c(p75,1) - phi_c(p25,1);
    min_phi(i,1) = phi_c(find(cumsum(phi_c(:,2))<=0,1,'last'),1);
    max_phi(i,1) = phi_c(find(cumsum(phi_c(:,2),"reverse")<=0,1),1);
end
% fraction of 1-layer firms with unconstrained n^0_1
frac_L1_unc_n = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    nt = n_int(:,(L_max+1)*(i-1)+1);
    zt = z_int(:,(L_max+1)*(i-1)+1);
    n_unc = nt<exp(lambda*zt)/h;
    frac_L1_unc_n(i,1) = sum(n_unc.*fs_w(:,i).*(L_star(:,i)==2))/sum(fs_w(:,i).*(L_star(:,i)==2));
end
% average alpha and profit
alpha_avg = sum(repmat(alpha_int,1,length(mw_vec)).*fs_w);
profit_avg = sum(profit_star.*fs_w);
% averages of average cost, marginal cost, alpha, firm size, and profit by
% L and by MW-constrained or not
aac_L1_con = nan(length(mw_vec),1);
aac_L1_unc = nan(length(mw_vec),1);
aac_L2_con = nan(length(mw_vec),1);
aac_L2_unc = nan(length(mw_vec),1);
aac_L3_con = nan(length(mw_vec),1);
aac_L3_unc = nan(length(mw_vec),1);
amc_L1_con = nan(length(mw_vec),1);
amc_L1_unc = nan(length(mw_vec),1);
amc_L2_con = nan(length(mw_vec),1);
amc_L2_unc = nan(length(mw_vec),1);
amc_L3_con = nan(length(mw_vec),1);
amc_L3_unc = nan(length(mw_vec),1);
aa_L1_con = nan(length(mw_vec),1);
aa_L1_unc = nan(length(mw_vec),1);
aa_L2_con = nan(length(mw_vec),1);
aa_L2_unc = nan(length(mw_vec),1);
aa_L3_con = nan(length(mw_vec),1);
aa_L3_unc = nan(length(mw_vec),1);
afs_L1_con = nan(length(mw_vec),1);
afs_L1_unc = nan(length(mw_vec),1);
afs_L2_con = nan(length(mw_vec),1);
afs_L2_unc = nan(length(mw_vec),1);
afs_L3_con = nan(length(mw_vec),1);
afs_L3_unc = nan(length(mw_vec),1);
apr_L1_con = nan(length(mw_vec),1);
apr_L1_unc = nan(length(mw_vec),1);
apr_L2_con = nan(length(mw_vec),1);
apr_L2_unc = nan(length(mw_vec),1);
apr_L3_con = nan(length(mw_vec),1);
apr_L3_unc = nan(length(mw_vec),1);
for i=1:length(mw_vec)
    ac1 = ac_int(:,i);
    mc1 = phi_int(:,i);
    fs1 = fs_w(:,i);
    fs0 = fs(:,i);
    Ls1 = L_star(:,i)==2;
    ps1 = profit_star(:,i);
    aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    Ls1 = L_star(:,i)==3;
    aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    Ls1 = L_star(:,i)==4;
    aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
    apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
    apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
end

% prepare table of results
rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Average wage in l=2';'Average wage for L=1';'Average wage for L=2';'Average wage in l=0 for L=2';'Average wage in l=1 for L=2';'Average wage for L=3';'Average wage in l=0 for L=3';'Average wage in l=1 for L=3';...
    'Average wage in l=2 for L=3';'Average entrepreneur wage';'Average entrepreneur wage for L=1';'Average entrepreneur wage for L=2';'Average entrepreneur wage for L=3';'Minimum wage as fraction of average';'Minimum wage as fraction of median';'Minimum wage as fraction of maximum';'Minimum value of z^0_L';...
    'Fraction of workers bound by MW';'Fraction of workers bound by MW and in L=1';'Fraction of workers bound by MW and in L=2';'Fraction of workers bound by MW and in L=3';'Fraction of firms bound by MW';'Fraction of firms with L=1 bound by MW';'Fraction of firms with L=2 bound by MW';...
    'Fraction of firms with L=3 bound by MW';'Fraction of firms with L=1 with unconstrained n0';'# Firms (& entrepreneurs)';'Net wage k';'Production cutoff alpha_bar';'Average alpha';'Total output';'Average profit';'Fixed-cost workers';'Teachers';'Workers/managers';'L=0';'L=1';'L=2';'L=3';...
    'L=0 (baseline for continuing)';'L=1 (baseline for continuing)';'L=2 (baseline for continuing)';'L=3 (baseline for continuing)';'Average firm size';'Average firm size (baseline for continuing)';'Average firm size for L=1';'Average firm size for L=2';'Average firm size for L=3';'Average size of l=0 for L>=0';...
    'Average size of l=1 for L>=1';'Average size of l=2 for L>=2';'Average size of l=3 for L>=3';'Average size of l=0 for L=1';'Average size of l=0 for L=2';'Average size of l=0 for L=3';'Average size of l=1 for L=1';'Average size of l=1 for L=2';'Average size of l=1 for L=3';'Average size of l=2 for L=2';...
    'Average size of l=2 for L=3';'Average size of l=3 for L=3';'Average output per worker';'Average output per worker (baseline for continuing)';'Average revenue per worker';'Average revenue per worker (baseline for continuing)';'Average of average cost';'Average of average cost (baseline for continuing)';...
    'Average Q-cost index';'Average Q-productivity index';'Average within-firm inequality';'Average within-firm inequality (baseline for continuing)';'Fraction of workers in l=0';'Average z^0_L';'Fraction of workers in l=1';'Average z^1_L';'Fraction of workers in l=2';'Average z^2_L';'Average manager skill in L=1';...
    'Average manager skill in L=2';'Average manager skill in L=3';'Fraction of agents in firms with L=0';'Fraction of agents in firms with L=1';'Fraction of agents in firms with L=2';'Fraction of agents in firms with L=3';'Fraction of agents with l=0 in firms with L=0';'Fraction of agents with l=0 in firms with L=1';...
    'Fraction of agents with l=1 in firms with L=1';'Fraction of agents with l=0 in firms with L=2';'Fraction of agents with l=1 in firms with L=2';'Fraction of agents with l=2 in firms with L=2';'Fraction of agents with l=0 in firms with L=3';'Fraction of agents with l=1 in firms with L=3';...
    'Fraction of agents with l=2 in firms with L=3';'Fraction of agents with l=3 in firms with L=3';'Average average cost with L=1 and MW binding';'Average average cost with L=1 and MW not binding';'Average marginal cost with L=1 and MW binding';'Average marginal cost with L=1 and MW not binding';...
    'Average alpha with L=1 and MW binding';'Average alpha with L=1 and MW not binding';'Average firm size with L=1 and MW binding';'Average firm size with L=1 and MW not binding';'Average profit with L=1 and MW binding';'Average profit with L=1 and MW not binding';'Average average cost with L=2 and MW binding';...
    'Average average cost with L=2 and MW not binding';'Average marginal cost with L=2 and MW binding';'Average marginal cost with L=2 and MW not binding';'Average alpha with L=2 and MW binding';'Average alpha with L=2 and MW not binding';'Average firm size with L=2 and MW binding';...
    'Average firm size with L=2 and MW not binding';'Average profit with L=2 and MW binding';'Average profit with L=2 and MW not binding';'Average average cost with L=3 and MW binding';'Average average cost with L=3 and MW not binding';'Average marginal cost with L=3 and MW binding';...
    'Average marginal cost with L=3 and MW not binding';'Average alpha with L=3 and MW binding';'Average alpha with L=3 and MW not binding';'Average firm size with L=3 and MW binding';'Average firm size with L=3 and MW not binding';'Average profit with L=3 and MW binding';...
    'Average profit with L=3 and MW not binding';'Average marginal cost';'Standard deviation of marginal cost';'Interquartile range of marginal cost';'Minimum value of marginal cost';'Maximum value of marginal cost'};
varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% higher','20% higher','24% higher'};
T = array2table([mw_vec';av_wage';av_wage_l0';av_wage_l1';av_wage_l2';av_wage_L1';av_wage_L2';av_wage_l0_L2';av_wage_l1_L2';av_wage_L3';av_wage_l0_L3';av_wage_l1_L3';av_wage_l2_L3';av_mw_overall';av_mw_L1';av_mw_L2';av_mw_L3';mw_avw';mw_medw';mw_maxw';min_z';pct_bnd_work';pct_bnd_work_L1';pct_bnd_work_L2';...
    pct_bnd_work_L3';pct_bnd_firm';pct_bnd_firm_L1';pct_bnd_firm_L2';pct_bnd_firm_L3';frac_L1_unc_n';M';k';alpha_bar';alpha_avg;output';profit_avg;num_fcwork';num_teach';num_workers';L_dist;Ld_con;afs;afs_b_cont;afs_L1';afs_L2';afs_L3';als_l0';als_l1';als_l2';als_l3';als_l0_L1';als_l0_L2';als_l0_L3';...
    als_l1_L1';als_l1_L2';als_l1_L3';als_l2_L2';als_l2_L3';als_l3_L3';apr;apr_b_cont;arev;arev_b_cont;aac;aac_b_cont;qcost;qprod;awfi;awfi_b_cont;num_work_l0';av_z_l0';num_work_l1';av_z_l1';num_work_l2';av_z_l2';av_mz_L1';av_mz_L2';av_mz_L3';nw_L0';nw_L1';nw_L2';nw_L3';nw_l0_L0';nw_l0_L1';nw_l1_L1';nw_l0_L2';...
    nw_l1_L2';nw_l2_L2';nw_l0_L3';nw_l1_L3';nw_l2_L3';nw_l3_L3';aac_L1_con';aac_L1_unc';amc_L1_con';amc_L1_unc';aa_L1_con';aa_L1_unc';afs_L1_con';afs_L1_unc';apr_L1_con';apr_L1_unc';aac_L2_con';aac_L2_unc';amc_L2_con';amc_L2_unc';aa_L2_con';aa_L2_unc';afs_L2_con';afs_L2_unc';apr_L2_con';apr_L2_unc';...
    aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3_con';apr_L3_unc';mean_phi;std_phi';iqr_phi';min_phi';max_phi'],'VariableNames',varnames,'RowNames',rownames);
% set desired precision in terms of the number of decimal places
n_decimal = 4;
new_T = varfun(@(x) num2str(x, ['%' sprintf('.%df', n_decimal)]), T);
new_T.Properties.VariableNames = T.Properties.VariableNames;
new_T.Properties.RowNames = T.Properties.RowNames;
new_T
writetable(new_T,fullfile(OutputPath,'FigureG1_B.csv'),'WriteRowNames',true)