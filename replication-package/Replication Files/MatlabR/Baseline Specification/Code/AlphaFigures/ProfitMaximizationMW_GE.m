% program solves for firm organization AND output q to maximize profits
% given minimum wage mw for each value of alpha; this file is used to
% generate the figures of firm results by value of alpha
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
mw_vec = [0; mw; 1.04*mw; 1.08*mw; 1.16*mw; 1.24*mw];

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
    [alpha_bar(i,1),fs(:,i),fs_w(:,i),ga_z(:,i),k(i,1),L_dist(:,i),L_star(:,i),M(i,1),n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i),num_fcwork(i,1),num_self_emp(i,1),num_teach(i,1),num_workers(i,1),output(i,1),...
        phi_int(:,i),profit_star(:,i),q_star(:,i),w_dist(:,2*(i-1)+1:2*i),z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)] = PMMW_GE(alpha_max,L_max,mw_vec(i,1),N,sigma,alpha,k(i,1),c,lambda,A,f,h,alpha_int,ga,delta,fE,DataPath);
end
% comparison of productivity (output per worker)
prod = q_star./fs;
% comparison in productivity measured by revenue per worker
prod_rev = (((repmat(alpha_int,1,length(mw_vec)).*repmat(k',length(ga),1)).^(1/sigma)).*(q_star.^((sigma-1)/sigma)))./fs;
price = (((repmat(alpha_int,1,length(mw_vec)).*repmat(k',length(ga),1)).^(1/sigma)).*(q_star.^(-1/sigma)));
% comparison in productivity measured by average cost
aq_JPE = nan(length(ga),length(mw_vec));
for i=1:length(mw_vec)
    aq_JPE(:,i) = k(i,1)*q_star(:,i)./sum(k(i,1)*n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i).*(mod_par(1,1)*z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)+1),2);
end
pqaq_JPE = price.*aq_JPE;
% average cost
ac_int = nan(length(ga),length(mw_vec));
for i=1:length(mw_vec)
    ac_int(:,i) = sum(k(i,1)*n_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i).*(mod_par(1,1)*z_int(:,(L_max+1)*(i-1)+1:(L_max+1)*i)+1),2)./q_star(:,i);
end

% set values to missing if firm doesn't produce
q_star(profit_star<=0)=nan;
fs(profit_star<=0)=nan;
prod(profit_star<=0)=nan;
prod_rev(profit_star<=0)=nan;
aq_JPE(profit_star<=0)=nan;
pqaq_JPE(profit_star<=0)=nan;
ac_int(profit_star<=0)=nan;
profit_star(profit_star<=0)=nan;

% generate PDFs for Figure F1

% plot profit as a function of alpha
plot(log(alpha_int),log(profit_star(:,1)),'LineWidth',2,'Color','blue'),title('Profit as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of profit'), hold on
plot(log(alpha_int),log(profit_star(:,2)),'--','LineWidth',2,'Color','red'),title('Profit as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of profit'), hold on
plot(log(alpha_int),log(profit_star(:,3)),':','LineWidth',2,'Color','black'),title('Profit as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of profit'), hold on
plot(log(alpha_int),log(profit_star(:,4)),'-.','LineWidth',2,'Color','green'),title('Profit as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of profit'), hold on
plot(log(alpha_int),log(profit_star(:,5)),'LineWidth',2,'Color','magenta'),title('Profit as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of profit'), hold on
plot(log(alpha_int),log(profit_star(:,6)),'--','LineWidth',2,'Color',[0.5 0.5 0.5]),title('Profit as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of profit'), hold off
xline(log(min(alpha_bar)))
xline(log(max(alpha_bar)))
legend('No MW','Baseline','+4% MW','+8% MW','+16% MW','+24% MW','location','southeast')
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'FigureF1A.pdf'));
% plot revenue per worker as a function of alpha
plot(log(alpha_int),log(prod_rev(:,1)),'LineWidth',2,'Color','blue'),title('Revenue Per Worker as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue per worker'), hold on
plot(log(alpha_int),log(prod_rev(:,2)),'--','LineWidth',2,'Color','red'),title('Revenue Per Worker as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue per worker'), hold on
plot(log(alpha_int),log(prod_rev(:,3)),':','LineWidth',2,'Color','black'),title('Revenue Per Worker as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue per worker'), hold on
plot(log(alpha_int),log(prod_rev(:,4)),'-.','LineWidth',2,'Color','green'),title('Revenue Per Worker as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue per worker'), hold on
plot(log(alpha_int),log(prod_rev(:,5)),'LineWidth',2,'Color','magenta'),title('Revenue Per Worker as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue per worker'), hold on
plot(log(alpha_int),log(prod_rev(:,6)),'--','LineWidth',2,'Color',[0.5 0.5 0.5]),title('Revenue Per Worker as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue per worker'), hold off
xline(log(min(alpha_bar)))
xline(log(max(alpha_bar)))
h = legend('No MW','Baseline','+4% MW','+8% MW','+16% MW','+24% MW');
pos = get(h,'Position');
posx = 0.6;
posy = 0.12;
set(h,'Position',[posx posy pos(3) pos(4)]);
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'FigureF1B.pdf'));
% plot quantity-based productivity as a function of alpha
plot(log(alpha_int),log(aq_JPE(:,1)),'LineWidth',2,'Color','blue'),title('Quantity-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of quantity-based productivity'), hold on
plot(log(alpha_int),log(aq_JPE(:,2)),'--','LineWidth',2,'Color','red'),title('Quantity-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of quantity-based productivity'), hold on
plot(log(alpha_int),log(aq_JPE(:,3)),':','LineWidth',2,'Color','black'),title('Quantity-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of quantity-based productivity'), hold on
plot(log(alpha_int),log(aq_JPE(:,4)),'-.','LineWidth',2,'Color','green'),title('Quantity-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of quantity-based productivity'), hold on
plot(log(alpha_int),log(aq_JPE(:,5)),'LineWidth',2,'Color','magenta'),title('Quantity-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of quantity-based productivity'), hold on
plot(log(alpha_int),log(aq_JPE(:,6)),'--','LineWidth',2,'Color',[0.5 0.5 0.5]),title('Quantity-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of quantity-based productivity'), hold off
xline(log(min(alpha_bar)))
xline(log(max(alpha_bar)))
legend('No MW','Baseline','+4% MW','+8% MW','+16% MW','+24% MW','location','southeast')
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'FigureF1C.pdf'));
% plot revenue-based productivity as a function of alpha
plot(log(alpha_int),log(pqaq_JPE(:,1)),'LineWidth',2,'Color','blue'),title('Revenue-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue-based productivity'), hold on
plot(log(alpha_int),log(pqaq_JPE(:,2)),'--','LineWidth',2,'Color','red'),title('Revenue-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue-based productivity'), hold on
plot(log(alpha_int),log(pqaq_JPE(:,3)),':','LineWidth',2,'Color','black'),title('Revenue-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue-based productivity'), hold on
plot(log(alpha_int),log(pqaq_JPE(:,4)),'-.','LineWidth',2,'Color','green'),title('Revenue-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue-based productivity'), hold on
plot(log(alpha_int),log(pqaq_JPE(:,5)),'LineWidth',2,'Color','magenta'),title('Revenue-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue-based productivity'), hold on
plot(log(alpha_int),log(pqaq_JPE(:,6)),'--','LineWidth',2,'Color',[0.5 0.5 0.5]),title('Revenue-Based Productivity as Function of \alpha'),xlabel('log(\alpha)'),ylabel('log of revenue-based productivity'), hold off
xline(log(min(alpha_bar)))
xline(log(max(alpha_bar)))
h = legend('No MW','Baseline','+4% MW','+8% MW','+16% MW','+24% MW');
pos = get(h,'Position');
posx = 0.48;
posy = 0.32;
set(h,'Position',[posx posy pos(3) pos(4)]);
hz=gcf;
set(gca,'FontSize',20)
set(findall(gcf,'type','text'),'FontSize',20)
set(hz,'PaperOrientation','landscape');
set(hz,'PaperUnits','normalized');
set(hz,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', fullfile(OutputPath,'FigureF1D.pdf'));