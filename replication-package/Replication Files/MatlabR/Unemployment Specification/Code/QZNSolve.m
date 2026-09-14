function foc_ssq = QZNSolve(qzn,lambda,c,A,min_z,sigma,alpha,k,h,n_free)
% this function solves for q, z1 and n0 if n0 is unconstrained for L = 1

q = qzn(1,1);
z = qzn(2,1);
n = qzn(3,1);
if n_free==0
    n = exp(lambda*min_z)/h;
end
phi = k*c/(A*n*lambda*exp(-lambda*z));
foc_vec = ones(3,1);
foc_vec(1,1) = (1-exp(-lambda*z))*c - (c*min_z+1)*lambda*n*exp(-lambda*z);
foc_vec(2,1) = A*(1-exp(-lambda*z))*n - q;
foc_vec(3,1) = ((sigma-1)/sigma)*(q^(-1/sigma))*((alpha*k)^(1/sigma)) - phi;
foc_ssq = n_free*foc_vec(1,1)^2 + sum(foc_vec(2:3,1).*foc_vec(2:3,1));

end