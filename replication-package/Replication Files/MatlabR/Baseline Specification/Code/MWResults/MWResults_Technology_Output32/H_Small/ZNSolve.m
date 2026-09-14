function foc_ssq = ZNSolve(zn,lambda,c,A,q,min_z)
% this function solves for z1 and n0 if n0 is unconstrained for L = 1,
% given value of q

z = zn(1,1);
n = zn(2,1);
foc_vec = ones(2,1);
foc_vec(1,1) = (1-exp(-lambda*z))*c - (c*min_z+1)*lambda*n*exp(-lambda*z);
foc_vec(2,1) = A*(1-exp(-lambda*z))*n - q;
foc_ssq = sum(foc_vec.*foc_vec);

end