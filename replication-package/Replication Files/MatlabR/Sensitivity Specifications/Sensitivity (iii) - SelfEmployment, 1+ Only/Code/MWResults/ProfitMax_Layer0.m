function foc = ProfitMax_Layer0(q,sigma,alpha,k,c,lambda,A)
% this function calculates the FOC for q for L=0, which is solved using
% fzero

foc = ((sigma-1)/sigma)*(q^(-1/sigma))*((alpha*k)^(1/sigma)) - (k*c/lambda)*(1/(A-q));

end