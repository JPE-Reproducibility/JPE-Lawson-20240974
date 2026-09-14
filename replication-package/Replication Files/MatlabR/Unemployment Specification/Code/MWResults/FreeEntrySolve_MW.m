function entry = FreeEntrySolve_MW(N,L_max,sigma,alpha,k,c,lambda,A,f,fE,h,alpha_int,ga,delta,min_z,chi,rr,DataPath)
% this function solves for partial equilibrium (holding k constant) across
% all firms, and calculates the expected profits from entry, to be used to
% find the general-equilibrium value of k

% define starting guess for values of z and phi
global z0_m
if min_z==0
    z0_m = zeros(L_max+2,L_max);
    z0_m(1:3,1) = [max(3.0,min_z); max(6.5,min_z+0.1); 1.3];
    z0_m(1:4,2) = [max(0.5,min_z); max(4.0,min_z+0.1); max(7.5,min_z+0.2); 1.0];
    z0_m(1:5,3) = [max(0.4,min_z); max(2.5,min_z+0.1); max(4.0,min_z+0.2); max(7.5,min_z+0.3); 0.9];
end
load(fullfile(DataPath,'qstart'))

% prepare matrices/arrays for profit, optimal q, n, z, phi, and values of
% maximization objective function
profit = nan(L_max+1,N);
q_opt = nan(L_max+1,N);
n_mat = nan(L_max+1,L_max+1,N);
z_mat = nan(L_max+1,L_max+1,N);
fvalq = zeros(L_max,N);
phi_vec = nan(L_max,N);
% iterate over values of N, starting at maximum value and declining (to
% make solutions easier)
for x = N:-1:1
    x
    % solve for optimal q and profit for layer 0
    fcpm0 = @(qq)ProfitMax_Layer0(qq,sigma,alpha(x,1),k,c,lambda,A);
    options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
    q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
    profit(1,x) = (q_opt(1,x)^((sigma-1)/sigma))*((alpha(x,1)*k)^(1/sigma)) - k*((c/lambda)*log(A/(A-q_opt(1,x))) + 1) - k*f;
    % prepare matrices for n and z for layers 1 through L_max
    n_vec = zeros(L_max+1,L_max+1);
    n_vec(1,1) = 1;
    z_vec = zeros(L_max+1,L_max+1);
    z_vec(1,1) = log(A/(A-q_opt(1,x)))/lambda;
    % solve for each value of L
    for j=1:L_max
        L = j;
        % if the maximization problem did not converge for the previous
        % value of alpha - which indicates that alpha was too small to
        % permit a solution for that value of L - then set q to zero for
        % this (smaller) value of alpha as well
        if x<N-1 && (profit(j+1,x+1)<profit(j,x+1) || profit(j+1,x+1)<-5)
            q_opt(j+1,x) = 0;
            fvalq(j,x) = 100;
        else
            % if we are on the first value of x, we don't have previous
            % values of q and z to try, so the solution is calculated
            % step-by-step
            if x==N
                % first, solve for optimal q; function ProfitMaxQMW solves
                % for optimal z for a given q, and then calculates FOC with
                % respect to q, which the function sets to zero
                fcpm = @(qq)ProfitMaxQMW(qq,L,lambda,h,k,c,A,sigma,alpha(x,1),Inf,min_z);
                % use qstart as starting value
                [q_opt(j+1,x),fvalq(j,x)] = fzero(fcpm,qstart(j,1),options);
                if q_opt(j+1,x)<0
                    q_opt(j+1,x) = 0;
                    fvalq(j,x) = 100;
                end
                qstart(j,1) = q_opt(j+1,x);
                % load starting guess for z, phi, and h
                z0 = z0_m(1:2+L,L);
                % solve for z and phi using function ZSolve, given q_opt
                % solved above
                zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
                fcml = @(zz)ZSolve(zz,L,q_opt(j+1,x),lambda,h,k,c,A);
                [z_vec_opt,fval] = fminsearch(fcml,z0,zoptions);
                % if function doesn't converge properly, try again, with
                % adjusted starting values if necessary
                if fval>=0.0000000001
                    [z_vec_opt,fval] = fminsearch(fcml,z_vec_opt,zoptions);
                    if fval>=0.0000000001 && L>1
                        z_vec_opt(L+1,1) = 0.8*z_vec_opt(L,1) + 0.2*z_vec_opt(L+1,1);
                        [z_vec_opt,fval] = fminsearch(fcml,z_vec_opt,zoptions);
                    end
                end
                % if function still doesn't converge properly, or gives an
                % optimal z0 below min_z, try again setting z0 to min_z and
                % solving for the other values of z (and phi) using
                % ZSolveMW
                if z_vec_opt(1,1)<min_z || fval>=0.0000000001
                    fcml2 = @(zz)ZSolveMW(zz,L,q_opt(j+1,x),lambda,h,k,c,A,min_z);
                    [z_vec_opt,fval] = fminsearch(fcml2,z0(2:L+2,1),zoptions);
                    if fval>=0.0000000001 && L>1
                        z_vec_opt(L,1) = 0.8*z_vec_opt(L-1,1) + 0.2*z_vec_opt(L,1);
                        [z_vec_opt,fval] = fminsearch(fcml2,z_vec_opt,zoptions);
                    end
                    % save optimal values in z_vec and phi_vec
                    z_vec(1:L+1,j+1) = [min_z; z_vec_opt(1:L,1)];
                    phi_vec(j,x) = z_vec_opt(L+1,1);
                else
                    % if ZSolve converged and generated a z0 above min_z,
                    % save optimal values in z_vec and phi_vec
                    z_vec(1:L+1,j+1) = z_vec_opt(1:L+1,1);
                    phi_vec(j,x) = z_vec_opt(L+2,1);
                end
                % solve for values of n given z
                n_vec(1,j+1) = exp(lambda*z_vec(L,j+1))/h;
                n_vec(2:L,j+1) = exp(lambda*(z_vec(L,j+1)-z_vec(1:L-1,j+1)));
                n_vec(L+1,j+1) = 1;
                % prepare new starting guess for values of z and phi
                z0_m(1:L+2,L) = [max(0.2,z_vec(1:L+1,j+1)); phi_vec(j,x)];
            % if we are not on the first value of x, we can use the
            % previous values of q and z for a given L as starting values,
            % and we can speed up the solution by solving for q and z
            % together
            else
                % if bottom layer already at zero, skip to ProfitMaxQZMW
                if z_mat(1,j+1,x+1)>min_z
                    % solve for optimal q, z, and phi using function
                    % ProfitMaxQZ
                    fcpm = @(qq)ProfitMaxQZ(qq,L,lambda,h,k,c,A,sigma,alpha(x,1),q_opt(j+1,x+1));
                    [qz_vec,fvalq(j,x)] = fminsearch(fcpm,[q_opt(j+1,x+1);z_mat(1:L+1,j+1,x+1);phi_vec(j,x+1)],options);
                    % if function doesn't converge properly, try again,
                    % with adjusted starting values if necessary
                    if fvalq(j,x)>=0.00001
                        qz_vec(1,1) = qz_vec(1,1) - 0.01;
                        [qz_vec,fvalq(j,x)] = fminsearch(fcpm,qz_vec,options);
                        if fvalq(j,x)>=0.00001 && L>1
                            qz_vec(L+2,1) = 0.8*qz_vec(L+1,1) + 0.2*qz_vec(L+2,1);
                            [qz_vec,fvalq(j,x)] = fminsearch(fcpm,qz_vec,options);
                        end
                    end
                else
                    qz_vec = [-1;-1];
                    fvalq(j,x) = 1;
                end
                % if function still doesn't converge properly, or gives an
                % optimal z0 below min_z, try again setting z0 to min_z and
                % solving for the other values of z (and q and phi)
                % using ProfitMaxQZMW
                if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
                    fcpm = @(qq)ProfitMaxQZMW(qq,L,lambda,h,k,c,A,sigma,alpha(x,1),min_z,q_opt(j+1,x+1));
                    [qz_vec,fvalq(j,x)] = fminsearch(fcpm,[q_opt(j+1,x+1);z_mat(2:L+1,j+1,x+1);phi_vec(j,x+1)],options);
                    if fvalq(j,x)>=0.00001 && L>1
                        qz_vec(L+1,1) = 0.8*qz_vec(L,1) + 0.2*qz_vec(L+1,1);
                        [qz_vec,fvalq(j,x)] = fminsearch(fcpm,qz_vec,options);
                    end
                    qz_vec = [qz_vec(1,1);min_z;qz_vec(2:L+2,1)];
                end
                % save optimal values in q_opt, z_vec, and phi_vec
                q_opt(j+1,x) = qz_vec(1,1);
                z_vec(1:L+1,j+1) = qz_vec(2:L+2,1);
                phi_vec(j,x) = qz_vec(L+3,1);
                % solve for values of n given z
                n_vec(1,j+1) = exp(lambda*z_vec(L,j+1))/h;
                n_vec(2:L,j+1) = exp(lambda*(z_vec(L,j+1)-z_vec(1:L-1,j+1)));
                n_vec(L+1,j+1) = 1;
                % evaluate first-order condition on n0 if L=1; if it is
                % positive - meaning that lowering n0 would lower costs -
                % then the firm should want to lower n0 below
                % exp(lambda*z0)/h
                dln0 = 0;
                if L==1
                    dln0 = k*(c*z_vec(1,j+1)+1) - phi_vec(j,x)*A*(1-exp(-lambda*z_vec(2,j+1)));
                end
                % if L = 1 and n0 unconstrained (or previous solution
                % failed), solve for z1, n0 and q using QZNSolve
                replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
                if replace==1
                    fc1x = @(qzn)QZNSolve(qzn,lambda,c,A,min_z,sigma,alpha(x,1),k,h,1);
                    qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
                    if qzn_opt(3,1)>(exp(lambda*min_z)/h)
                        fc1x = @(qzn)QZNSolve(qzn,lambda,c,A,min_z,sigma,alpha(x,1),k,h,0);
                        qzn_opt = fminsearch(fc1x,[q_opt(j+1,x+1);2;1/h],options);
                        qzn_opt(3,1) = exp(lambda*min_z)/h;
                    end
                    q_opt(j+1,x) = qzn_opt(1,1);
                    z_vec(1,j+1) = min_z;
                    z_vec(2,j+1) = qzn_opt(2,1);
                    phi_vec(j,x) = k*c/(A*qzn_opt(3,1)*lambda*exp(-lambda*qzn_opt(2,1)));
                    n_vec(1,j+1) = qzn_opt(3,1);
                    n_vec(2,j+1) = 1;
                    fvalq(j,x) = 0.000001;
                end
            end
        end
        % solve for maximized profit (net of entry costs) if problem
        % converged
        if abs(fvalq(j,x))<0.0001
            profit(j+1,x) = (q_opt(j+1,x)^((sigma-1)/sigma))*((alpha(x,1)*k)^(1/sigma)) - sum(k*n_vec(1:L+1,j+1).*(c*z_vec(1:L+1,j+1)+1)) - k*f;
        else
            profit(j+1,x) = -10;
        end
    end
    % display optimal q for each iteration
    q_opt(:,x);
    % construct matrix x of arrays n_mat and z_mat
    n_mat(:,:,x) = n_vec;
    z_mat(:,:,x) = z_vec;
    % plot maximized profits for each layer and each value of alpha as
    % iterations proceed (brief pause ensures that the plot updates)
    plot(alpha,[[nan(x-1,L_max+1);max(profit(:,x:N)',-5)] [nan(x-1,1);zeros(N-x+1,1)]])
    pause(0.001)
end
save(fullfile(DataPath,'qstart'),'qstart')
% interpolate results calculated for 250 points of alpha using a linear
% spline over nearly a million points
% construct array of results for q, profit, n, and z
v_vec = nan(N,2*(L_max+2),L_max+1);
for jk=1:L_max+1
    v_vec(1:N,1:(2+2*jk),jk) = [q_opt(jk,:)' profit(jk,:)' reshape(n_mat(1:jk,jk,:),jk,N)' reshape(z_mat(1:jk,jk,:),jk,N)'];
end
% interpolate using linear spline
v_int = interp1(alpha,v_vec,alpha_int,'linear','extrap');
% convert profit into matrix
profit_int = reshape(v_int(:,2,:),length(v_int),L_max+1);
% solve for profit-maximizing L for each alpha
[profit_star,L_star] = max(profit_int,[],2);
% convert q into matrix
q_int = reshape(v_int(:,1,:),length(v_int),L_max+1);
% prepare matrices for optimal q, n, and z
q_star = zeros(length(v_int),1);
n_int = zeros(length(v_int),L_max+1);
z_int = zeros(length(v_int),L_max+1);
% fill matrices for optimal q, n, and z using the associated values for the
% profit-maximizing L for each alpha
for jk=1:length(v_int)
    q_star(jk,1) = q_int(jk,L_star(jk,1));
    n_int(jk,1:L_star(jk,1)) = v_int(jk,3:2+L_star(jk,1),L_star(jk,1));
    z_int(jk,1:L_star(jk,1)) = v_int(jk,3+L_star(jk,1):2+2*L_star(jk,1),L_star(jk,1));
end
% calculate total mass of workers at each firm
num_work = sum(n_int.*(c*z_int+1),2)+f;

% calculate unemployment rate
unemp_r = (1+chi*(1-rr)*k)^(-1);
% calculate negative "profit" for workers due to risk of unemployment
nV = -unemp_r*(1-rr)*k + (log(unemp_r)+(1-unemp_r))/chi;
% calculate zero-profit cutoff for alpha
y = find(profit_star>nV,1);
if y==1
    alpha_bar = 1
else
    alpha_bar = alpha_int(y-1,1) - (alpha_int(y,1)-alpha_int(y-1,1))*(profit_star(y-1,1)-nV)/(profit_star(y,1)-profit_star(y-1,1))
end
% calculate adjusted probability distribution for firms that actually
% operate
ga_z = ga.*(alpha_int>alpha_bar);
% calculate net expected profit for a potential entrant
entry = sum((profit_star-nV).*ga_z)/delta - k*fE

% calculate firm layer distribution (percentage of active firms of each L)
L_dist = zeros(L_max+1,1);
for j=1:L_max+1
    L_dist(j,1) = sum(ga_z.*(L_star==j))/sum(ga_z);
end
L_dist

% drop large variables
clear alpha_int ga ga_z L_star n_int num_work profit_int profit_star q_int q_star v_int z_int

end