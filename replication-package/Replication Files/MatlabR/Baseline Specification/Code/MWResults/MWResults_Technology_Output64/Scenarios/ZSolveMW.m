function foc_ssq = ZSolveMW(z0,L,q,lambda,h,k,c,A,min_z)
% this function solves for z and phi given value of q, setting z0 to min_z

% test if z monotonically increasing
z_vec = [min_z; z0(1:L,1)];
z_diff = [z_vec(1,1); z_vec(2:L+1,1)-z_vec(1:L,1)];
if min(z_diff)>=0
    % MC phi
    phi = z0(L+1,1);
    % solve for values of n given z
    n_vec = ones(L+1,1);
    n_vec(1,1) = exp(lambda*z_vec(L,1))/h;
    n_vec(2:L,1) = exp(lambda*(z_vec(L,1)-z_vec(1:L-1,1)));
    % check FOCs for z and phi
    foc_vec = ones(L+2,1);
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
    % drop FOC on z0 (kept until now to keep the code as similar as
    % possible to ZSolve)
    foc_vec = foc_vec(2:L+2,1);
    % objective function: squared FOCs
    foc_ssq = sum(foc_vec.*foc_vec);
else
    foc_ssq = 1000000;
end

end