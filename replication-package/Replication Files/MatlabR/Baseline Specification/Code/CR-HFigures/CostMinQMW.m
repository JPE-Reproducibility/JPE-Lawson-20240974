function q_mat = CostMinQMW(q,L_max,lambda,h,k,c,A,min_z)
% this function solves for optimal z, n, and costs for each layer given q
cost_L = nan(L_max,1);
z_mat = nan(L_max,L_max+2);
n_mat = nan(L_max,L_max+1);

for j=1:L_max
    % number of layers & output
    L = j;
    % load starting guess for z and phi
    global z0_m
    z0 = z0_m(1:2+L,L);
    % solve for z and phi using function ZSolve, given q
    fcml = @(zz)ZSolve(zz,L,q,lambda,h,k,c,A);
    zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
    [z_vec_opt,fval] = fminsearch(fcml,z0,zoptions);
    % if function doesn't converge properly, try again, with adjusted
    % starting values if necessary
    if fval>=0.0000000001
        [z_vec_opt,fval] = fminsearch(fcml,z_vec_opt,zoptions);
        if fval>=0.0000000001 && L>1
            z_vec_opt(L+1,1) = 0.8*z_vec_opt(L,1) + 0.2*z_vec_opt(L+1,1);
            [z_vec_opt,fval] = fminsearch(fcml,z_vec_opt,zoptions);
        end
    end
    % if function still doesn't converge properly, or gives an optimal z0
    % below min_z, try again setting z0 to min_z and solving for the other
    % values of z (and phi) using ZSolveMW
    if z_vec_opt(1,1)<min_z || fval>=0.0000000001
        fcml2 = @(zz)ZSolveMW(zz,L,q,lambda,h,k,c,A,min_z);
        [z_vec_opt,fval] = fminsearch(fcml2,z0(2:L+2,1),zoptions);
        if fval>=0.0000000001 && L>1
            z_vec_opt(L,1) = 0.8*z_vec_opt(L-1,1) + 0.2*z_vec_opt(L,1);
            [z_vec_opt,fval] = fminsearch(fcml2,z_vec_opt,zoptions);
        end
        % save optimal values in z_vec and phi
        z_vec = [min_z; z_vec_opt(1:L,1)];
        phi = z_vec_opt(L+1,1);
    else
        % if ZSolve converged and generated a z0 above min_z, save optimal
        % values in z_vec and phi
        z_vec = z_vec_opt(1:L+1,1);
        phi = z_vec_opt(L+2,1);
    end
    % evaluate first-order condition on n0 if L=1; if it is positive -
    % meaning that lowering n0 would lower costs - then the firm should
    % want to lower n0 below exp(lambda*z0)/h
    dln0 = 0;
    if L==1
        dln0 = k*(c*z_vec(1,1)+1) - phi*A*(1-exp(-lambda*z_vec(2,1)));
    end
    % if ZSolve or ZSolveMW converged properly, good==1, and matrix of
    % results will be prepared
    good = (fval<0.0000000001) && (dln0<=0);
    % if L = 1 and n0 unconstrained (or previous solution failed), solve
    % for z1 and n0 using ZNSolve
    replace = (L==1) && (fval>=0.0000000001 || dln0>0);
    if good==1
        n_vec = ones(L+1,1);
        n_vec(1,1) = exp(lambda*z_vec(L,1))/h;
        for i=2:L
            n_vec(i,1) = exp(lambda*(z_vec(L,1)-z_vec(i-1,1)));
        end
        cost_L(j,1) = sum(k*n_vec.*(c*z_vec+1));
        z_mat(j,1:L+1) = z_vec';
        z_mat(j,L_max+2) = phi;
        n_mat(j,1:L+1) = n_vec';
        z0_m(1:L+2,L) = [max(0.2,z_mat(L,1:L+1)) z_mat(L,L_max+2)]';
    elseif replace==1
        fc1x = @(zn)ZNSolve(zn,lambda,c,A,q,min_z);
        zn_opt = fminsearch(fc1x,[2;1/h],zoptions);
        if zn_opt(2,1)>(exp(lambda*min_z)/h)
            zn_opt(2,1) = exp(lambda*min_z)/h;
            zn_opt(1,1) = (1/lambda)*log(A*zn_opt(2,1)/(A*zn_opt(2,1)-q));
        end
        z_mat(1,1) = min_z;
        z_mat(1,2) = zn_opt(1,1);
        z_mat(1,L_max+2) = k*c/(A*zn_opt(2,1)*lambda*exp(-lambda*zn_opt(1,1)));
        n_mat(1,1) = zn_opt(2,1);
        n_mat(1,2) = 1;
        cost_L(1,1) = n_mat(1,1)*k*(c*min_z+1) + k*(c*z_mat(1,2)+1);
        z0_m(1:L+2,L) = [max(0.2,z_mat(L,1:L+1)) z_mat(L,L_max+2)]';
    end
end

q_mat = [z_mat; n_mat cost_L];

end