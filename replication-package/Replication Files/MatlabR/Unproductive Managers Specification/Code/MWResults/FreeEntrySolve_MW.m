function entry = FreeEntrySolve_MW(sigma,k,c,lambda,A,f,fE,alpha_int,ga,delta,min_z)
% this function solves for partial equilibrium (holding k constant) across
% all firms, and calculates the expected profits from entry, to be used to
% find the general-equilibrium value of k

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

end