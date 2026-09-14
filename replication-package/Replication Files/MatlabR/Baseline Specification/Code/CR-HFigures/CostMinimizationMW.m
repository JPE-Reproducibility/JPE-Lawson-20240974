% program solves for firm organization to minimize costs given minimum wage
% mw for each value of q
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
% prepare min_z and q distribution
min_z = max(0,(mw - k)/(c*k));
last_A = floor(100*A)/100;
next_A = ceil(10*A)/10;
%q = [0.01:0.01:last_A (A+last_A)/2 (9*A+last_A)/10 (99*A+last_A)/100 (999*A+last_A)/1000 next_A:0.1:50]';
q = [0.01:0.01:last_A (9*A+last_A)/10 next_A:0.1:50]';
N = length(q);

% define starting guess for z
global z0_m
z0_m = zeros(L_max+2,L_max);
z0_m(1:3,1) = [max(3.0,min_z); max(6.5,min_z+0.1); 1.3];
z0_m(1:4,2) = [max(0.5,min_z); max(4.0,min_z+0.1); max(7.5,min_z+0.2); 1.0];
z0_m(1:5,3) = [max(0.4,min_z); max(2.5,min_z+0.1); max(4.0,min_z+0.2); max(7.5,min_z+0.3); 0.9];

% prepare matrices/arrays for cost and marginal cost
cost_vec = zeros(N,L_max);
mc_vec = zeros(N,L_max);
cv0 = nan(N,1);
mc0 = nan(N,1);
% matrix of results for each q
q_mat = zeros(2*L_max,L_max+2,N);
% iterate over values of N, starting at maximum value and declining (to
% make solutions easier)
for x = N:-1:1
    x
    % solve for self-employment costs & marginal costs if q<A
    if q(x,1)<A
        cv0(x,1) = (k*c/lambda)*log(A/(A-q(x,1))) + k;
        mc0(x,1) = k*c/(lambda*(A-q(x,1)));
    end
    % solve for matrices of z, n, and costs for output q
    q_mat(:,:,x) = CostMinQMW(q(x,1),L_max,lambda,h,k,c,A,0);
    % solve for vectors of costs & marginal costs for output q
    cost_vec(x,:) = q_mat(L_max+1:2*L_max,L_max+2,x);
    mc_vec(x,:) = q_mat(1:L_max,L_max+2,x)';
    plot(q,[nan(x-1,L_max);cost_vec(x:N,:)])
    pause(0.001)
end
% solve for matrices of average costs
ac_vec = cost_vec./(repmat(q,1,L_max));
% add self-employment costs
ac0 = cv0./q;
cost_vec = [cv0 cost_vec];
ac_vec = [ac0 ac_vec];
mc_vec = [mc0 mc_vec];


% [cost_vec_opt,L_x] = min(cost_vec,[],2);
% mc_vec_opt = nan(length(L_x),1);
% for i=1:length(L_x)
%     mc_vec_opt(i,1) = mc_vec(i,L_x(i,1));
% end
% ac_vec_opt = cost_vec_opt./q;
% ac_vec_opt(ac_vec_opt>2) = nan;
% plot(log(q),log(ac_vec_opt))
% plot(log(q),log(mc_vec_opt))


% generate PDFs for Figure 3
% don't keep very high costs for L = 0 or L = 1 (hard to interpret figure)
% also don't keep high costs for low q with L = 3 (not valid solution)
for i=1:length(ac_vec)
    if ac_vec(i,1)>exp(1)
        ac_vec(i,1) = nan;
        mc_vec(i,1) = nan;
        ac_vec(i,2) = nan;
        mc_vec(i,2) = nan;
    end
    if ac_vec(i,2)<ac_vec(i,1)
        mc_vec(i,1) = nan;
    end
    if ac_vec(i,4)>(ac_vec(i,3)+0.025)
        ac_vec(i,4) = nan;
        mc_vec(i,4) = nan;
    end
end

% figure for marginal cost without minimum wage
plot(log(q),log(mc_vec(:,1)),'LineWidth',2,'Color','blue'),title('Marginal Cost without MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold on
plot(log(q),log(mc_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Marginal Cost without MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold on
plot(log(q),log(mc_vec(:,3)),':','LineWidth',2,'Color','black'),title('Marginal Cost without MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold on
plot(log(q),log(mc_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Marginal Cost without MW'),xlabel('log quantity of output'),ylabel('log marginal cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold off
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'Figure3B.pdf'));

% figure for average cost without minimum wage
plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost without MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold on
plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost without MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold on
plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost without MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold on
plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost without MW'),xlabel('log quantity of output'),ylabel('log average cost of production'), legend('0 layers','1 layer','2 layers','3 layers','location','northeast'), hold off
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'Figure3A.pdf'));