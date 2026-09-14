function [alpha_bar,fs,fs_w,ga_z,k,M,n_opt,num_fcwork,num_teach,num_workers,output,phi_opt,profit,q_opt,wage,z_opt] = PMMW_GE(mw,sigma,k,c,lambda,A,f,alpha_int,ga,delta,fE)
% this function solves for the allocation for a given value of min_z (due
% to a given value of the minimum wage) in general equilibrium

% solving for k (wage per unit of time) that ensure zero profits
adj = 0.01;
entry = 10;
min_z = max(0,(mw - k)/(c*k));
% loop over k to find the value that satisfies the zero-profit entry
% condition
while abs(entry)>0.000001
    entry = FreeEntrySolve_MW(sigma,k,c,lambda,A,f,fE,alpha_int,ga,delta,min_z);
    k = k + adj*entry
    if mw<0.202
        adj = adj*0.99
    end
    min_z = max(0,(mw - k)/(c*k));
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
% wage distribution
wage = k*(c*z_opt+1);
% firm size distribution
fs = n_opt+1;
fs_w = ga_z/sum(ga_z);
% total output (unweighted)
output = M*dot(q_opt,fs_w);
% number of non-entrepreneur workers
num_workers = M*(dot(fs,fs_w)-1);
% workers allocated to fixed costs
num_fcwork = M*(f+delta*fE/sum(ga_z));
% teachers
num_teach = c*M*dot(z_opt*n_opt,fs_w);

end