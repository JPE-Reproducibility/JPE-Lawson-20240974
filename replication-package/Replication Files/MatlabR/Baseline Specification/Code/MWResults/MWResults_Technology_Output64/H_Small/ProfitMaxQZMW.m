function foc_ssq = ProfitMaxQZMW(qz,L,lambda,h,k,c,A,sigma,alpha,min_z,old_q)
% this function solves for optimal q, z, and phi, setting z0 to min_z

% turn vector qz into values of q, z, and phi
q = qz(1,1);
z_vec = [min_z; qz(2:L+1,1)];
phi = qz(L+2,1);
% test if z monotonically increasing
z_diff = [z_vec(1,1); z_vec(2:L+1,1)-z_vec(1:L,1)];
if min(z_diff)>=0 && q<=old_q && q>0
    % solve for values of n given z
    n_vec = ones(L+1,1);
    n_vec(1,1) = exp(lambda*z_vec(L,1))/h;
    n_vec(2:L,1) = exp(lambda*(z_vec(L,1)-z_vec(1:L-1,1)));
    % check FOCs for z, phi, and q
    foc_vec = ones(L+3,1);
    % FOCs for z0 through z_{L-2}
    foc_vec(1,1) = n_vec(1,1)*k*c - lambda*n_vec(2,1)*k*(c*z_vec(2,1)+1);
    for i=2:L-1
        foc_vec(i,1) = n_vec(i,1)*k*c - lambda*n_vec(i+1,1)*k*(c*z_vec(i+1,1)+1);
    end
    % FOC for z_{L-1}
    L1sum = k*lambda*sum((c*z_vec(1:L,1)+1).*n_vec(1:L,1));
    foc_vec(L,1) = n_vec(L,1)*k*c + L1sum - phi*(A*(1-exp(-lambda*z_vec(L+1,1)))*lambda*n_vec(1,1));
    % FOC for z_L
    foc_vec(L+1,1) = n_vec(L+1,1)*k*c - phi*(A*n_vec(1,1)*lambda*exp(-lambda*z_vec(L+1,1)));
    % FOC for phi (production equals q)
    foc_vec(L+2,1) = A*(1-exp(-lambda*z_vec(L+1,1)))*n_vec(1,1) - q;
    % FOC for q (maximizing profit)
    foc_vec(L+3,1) = ((sigma-1)/sigma)*(q^(-1/sigma))*((alpha*k)^(1/sigma)) - phi;
    % drop FOC on z0 (kept until now to keep the code as similar as
    % possible to ProfitMaxQZ)
    foc_vec = foc_vec(2:L+3,1);
    % objective function: squared FOCs
    foc_ssq = sum(foc_vec.*foc_vec);
else
    foc_ssq = 1000000;
end

end