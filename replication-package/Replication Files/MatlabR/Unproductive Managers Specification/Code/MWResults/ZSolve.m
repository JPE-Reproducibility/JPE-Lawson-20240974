function foc = ZSolve(z,lambda,c)
% this function solves for z given values of lambda and c

foc = c*(exp(lambda*z)-1) - lambda*(c*z+1);

end