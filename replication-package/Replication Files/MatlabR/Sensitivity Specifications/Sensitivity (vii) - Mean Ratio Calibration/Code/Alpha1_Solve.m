% This function solves for the integral of the alpha distribution
function z = Alpha1_Solve(g1x,g2,g3,g4,alpha_int)

ga = exp(spline([1;50;500;1000],[g1x;g2;g3;g4],alpha_int));
z = sum(ga) - 1;

end