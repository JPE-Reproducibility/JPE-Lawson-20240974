function foc = ProfitMaxQMW(q,L,lambda,h,k,c,A,sigma,alpha,old_q,min_z)
% this function solves for optimal z for a given q, and then calculates FOC
% with respect to q, which is then set to zero using fzero

% rules out invalid values of q
if q>old_q || q<0
    foc = -100 + 200*(q<0);
    if q<(-100000)
        foc = 0;
    end
else
    % load starting guess for z and phi
    %load z0_mw
    global z0_m
    z0 = z0_m(1:2+L,L);
    % solve for z and phi using function ZSolve, given q
    fcml = @(zz)ZSolve(zz,L,q,lambda,h,k,c,A);
    options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
    [z_vec_opt,fval] = fminsearch(fcml,z0,options);
    % if function doesn't converge properly, try again, with adjusted
    % starting values if necessary
    if fval>=0.0000000001
        [z_vec_opt,fval] = fminsearch(fcml,z_vec_opt,options);
        if fval>=0.0000000001 && L>1
            z_vec_opt(L+1,1) = 0.8*z_vec_opt(L,1) + 0.2*z_vec_opt(L+1,1);
            [z_vec_opt,fval] = fminsearch(fcml,z_vec_opt,options);
        end
    end
    % if function still doesn't converge properly, or gives an optimal z0
    % below min_z, try again setting z0 to min_z and solving for the other
    % values of z (and phi) using ZSolveMW
    if z_vec_opt(1,1)<min_z || fval>=0.0000000001
        fcml2 = @(zz)ZSolveMW(zz,L,q,lambda,h,k,c,A,min_z);
        [z_vec_opt,fval] = fminsearch(fcml2,z0(2:L+2,1),options);
        if fval>=0.0000000001 && L>1
            z_vec_opt(L,1) = 0.8*z_vec_opt(L-1,1) + 0.2*z_vec_opt(L,1);
            [z_vec_opt,fval] = fminsearch(fcml2,z_vec_opt,options);
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
        % solve for FOC with respect to q
        foc = ((sigma-1)/sigma)*(q^(-1/sigma))*((alpha*k)^(1/sigma)) - phi;
        % prepare new starting guess for values of z, phi, and h
        z0_m(1:L+2,L) = [max(0.2,z_vec(1:L+1,1)); phi];
        %save('z0_mw','z0_m');
    else
        if replace==1
            fc1x = @(zn)ZNSolve(zn,lambda,c,A,q,min_z);
            zn_opt = fminsearch(fc1x,[8;200],options);
            if zn_opt(2,1)>(exp(lambda*min_z)/h)
                zn_opt(2,1) = exp(lambda*min_z)/h;
                zn_opt(1,1) = (1/lambda)*log(A*zn_opt(2,1)/(A*zn_opt(2,1)-q));
            end
            % solve for FOC with respect to q
            foc = ((sigma-1)/sigma)*(q^(-1/sigma))*((alpha*k)^(1/sigma)) - k*c/(A*zn_opt(2,1)*lambda*exp(-lambda*zn_opt(1,1)));
        else
            foc = 100;
        end
    end
end

end