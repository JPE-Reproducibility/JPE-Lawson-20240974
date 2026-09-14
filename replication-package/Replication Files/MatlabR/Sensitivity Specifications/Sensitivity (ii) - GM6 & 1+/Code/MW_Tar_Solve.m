% This function solves for percentiles of the income distribution
function z = MW_Tar_Solve(wx,wd1,w_dist,pct_bnd)

z = sum(wd1(w_dist(:,2)<=wx))-pct_bnd;

end