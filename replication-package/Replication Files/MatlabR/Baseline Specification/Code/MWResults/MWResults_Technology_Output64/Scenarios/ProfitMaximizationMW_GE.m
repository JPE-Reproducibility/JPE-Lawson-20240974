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

% solve for equilibrium
[k,output] = PMMW_GE(alpha_max,L_max,0,N,sigma,alpha,k,c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath)

% alternative scenarios
% low h
h = 0.145
k_h = k;
diff = 1;
while abs(diff)>0.00005
    [k_h,output_h] = PMMW_GE(alpha_max,L_max,0,N,sigma,alpha,k_h,c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath)
    diff = output_h/output-1.064
    h = h + 0.6*diff
end
h_star = h;
% low c
h = mod_par(2,1);
c = 0.135
k_c = k;
diff = 1;
while abs(diff)>0.00005
    [k_c,output_c] = PMMW_GE(alpha_max,L_max,0,N,sigma,alpha,k_c,c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath)
    diff = output_c/output-1.064
    c = c + 1*diff
end
c_star = c;
% high lambda
c = mod_par(1,1);
lambda = 1.65
k_l = k;
diff = 1;
while abs(diff)>0.00005
    [k_l,output_l] = PMMW_GE(alpha_max,L_max,0,N,sigma,alpha,k_l,c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath)
    diff = output_l/output-1.064
    lambda = lambda - 10*diff
end
lambda_star = lambda;
% high A
lambda = 1;
A = 0.255
k_A = k;
diff = 1;
while abs(diff)>0.00005
    [k_A,output_A] = PMMW_GE(alpha_max,L_max,0,N,sigma,alpha,k_A,c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath)
    diff = output_A/output-1.064
    A = A - 0.2*diff
end
A_star = A;

save(fullfile(DataPath,'MW_Scenarios_64'),'h_star','c_star','lambda_star','A_star','k','k_h','k_c','k_l','k_A')