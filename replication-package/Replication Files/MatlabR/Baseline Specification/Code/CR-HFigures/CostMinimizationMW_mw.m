% program solves for firm organization to minimize costs given each value
% of minimum wage mw for each value of q
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
% prepare q distribution
last_A = floor(100*A)/100;
next_A = ceil(10*A)/10;
%q = [0.01:0.01:last_A (A+last_A)/2 (9*A+last_A)/10 (99*A+last_A)/100 (999*A+last_A)/1000 next_A:0.1:50]';
q = [0.01:0.01:last_A (9*A+last_A)/10 next_A:0.1:50]';
N = length(q);
% prepare vector of values of mw
mw_vec = [floor(100*mw)/100; ceil(100*mw)/100; ceil(100*mw)/100+0.01; ceil(100*mw)/100+0.02];

% prepare matrices/arrays for cost and marginal cost
cost_mat = zeros(N,L_max,4);
mc_mat = zeros(N,L_max,4);
cost_vec = zeros(N,4);
mc_vec = zeros(N,4);
cv0 = nan(N,4);
mc0 = nan(N,4);
% matrix of results for each q
q_mat = zeros(2*L_max,L_max+2,N,4);
% iterate over values of h
for i=1:4
    mw = mw_vec(i,1);
    % define starting guess for z
    global z0_m
    min_z = max(0,(mw - k)/(c*k));
    z0_m = zeros(L_max+2,L_max);
    z0_m(1:3,1) = [max(2.5,min_z); max(6.5,min_z+0.1); 1.4];
    z0_m(1:4,2) = [max(0.5,min_z); max(4.0,min_z+0.1); max(7.0,min_z+0.2); 1.1];
    z0_m(1:5,3) = [max(0.4,min_z); max(2.5,min_z+0.1); max(4.0,min_z+0.2); max(7.0,min_z+0.3); 1.0];
    % iterate over values of N, starting at maximum value and declining (to
    % make solutions easier)
    for x = N:-1:1
        x
        % solve for self-employment costs & marginal costs if q<A
        if q(x,1)<A
            cv0(x,i) = (k*c/lambda)*log(A/(A-q(x,1))) + k;
            mc0(x,i) = k*c/(lambda*(A-q(x,1)));
        end
        % solve for matrices of z, n, and costs for output q
        q_mat(:,:,x,i) = CostMinQMW(q(x,1),L_max,lambda,h,k,c,A,min_z);
        % solve for matrices of costs & marginal costs for output q
        cost_mat(x,:,i) = q_mat(L_max+1:2*L_max,L_max+2,x,i);
        mc_mat(x,:,i) = q_mat(1:L_max,L_max+2,x,i)';
        [cost_vec(x,i),L_x] = min([cv0(x,i) cost_mat(x,:,i)]);
        if L_x==1 || mc_mat(x,L_x-1,i)<0
            mc_vec(x,i) = mc0(x,i);
        else
            mc_vec(x,i) = mc_mat(x,L_x-1,i);
        end
        plot(q,[nan(x-1,4);cost_vec(x:N,:)])
        pause(0.001)
    end
end
% solve for matrices of average costs
ac_vec = cost_vec./(repmat(q,1,4));

mc_vec(log(ac_vec)>1) = nan;
ac_vec(log(ac_vec)>1) = nan;

% generate PDFs for Figure 5

% plot average cost functions
plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost with MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold on
plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost with MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold on
plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost with MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold on
plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost with MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold off
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'Figure5A.pdf'));

% plot marginal cost functions
plot(log(q),log(mc_vec(:,1)),'LineWidth',2,'Color','blue'),title('Marginal Cost with MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold on
plot(log(q),log(mc_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Marginal Cost with MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold on
plot(log(q),log(mc_vec(:,3)),':','LineWidth',2,'Color','black'),title('Marginal Cost with MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold on
plot(log(q),log(mc_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Marginal Cost with MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('mw = 0','mw = 0.19','mw = 0.20','mw = 0.21','location','northeast'), hold off
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'Figure5B.pdf'));