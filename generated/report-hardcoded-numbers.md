## Potentially Hardcoded Numeric Constants


We found the following set of hard coded numbers. This may be completely legitimate (parameter input, thresholds for computations, etc), and is hence only for information.

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_lambda.m**

- Line 7, : % delta (firm death rate) = 0.266 (DADS)
- Line 11, : delta = 0.266;
- Line 83, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/PMMW_GE.m**

- Line 11, : while abs(entry)>0.000001
- Line 14, : if mw<0.202
- Line 23, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.00000001);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.370 (DADS)
- Line 12, : delta = 0.370;
- Line 25, : c = 0.317;
- Line 26, : h = 0.221;
- Line 27, : A = 0.260;
- Line 32, : f = 0.225;
- Line 33, : mw = 0.170;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.241;
- Line 43, : pct_3 = 0.2216;
- Line 44, : pct_4 = 0.0820;
- Line 51, : av_wage = 0.2004;
- Line 53, : pct_bnd = 0.0551;
- Line 55, : pct_se = 0.1701;
- Line 70, : k = 0.170
- Line 95, : alpha_int = 1.0005*ones(200000,1);
- Line 99, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 133, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 168, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 169, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 202, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 207, : if fval>=0.0000000001
- Line 209, : if fval>=0.0000000001 && L>1
- Line 218, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 221, : if fval>=0.0000000001 && L>1
- Line 253, : if fvalq(j,x)>=0.00001
- Line 256, : if fvalq(j,x)>=0.00001 && L>1
- Line 269, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 272, : if fvalq(j,x)>=0.00001 && L>1
- Line 296, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 311, : fvalq(j,x) = 0.000001;
- Line 317, : if abs(fvalq(j,x))<0.0001
- Line 331, : %pause(0.001)
- Line 387, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 410, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 412, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.370 (DADS)
- Line 12, : delta = 0.370;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 323, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 325, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 327, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 329, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 338, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 340, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 342, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 344, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 419, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 420, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 430, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 431, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 441, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 442, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 443, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 444, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 445, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 446, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 447, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 448, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 449, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 450, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 13, : delta = 0.266;
- Line 28, : c = 0.2205;
- Line 29, : h = 0.1940;
- Line 30, : A = 0.2405;
- Line 31, : g2 = -12.129;
- Line 32, : g3 = -15.433;
- Line 33, : g4 = -24.554;
- Line 34, : fE = 5.931;
- Line 35, : f = 5.787;
- Line 37, : mw = 0.1852;
- Line 43, : teach = 0.0982;
- Line 45, : pct_su = 0.203;
- Line 47, : pct_3 = 0.446;
- Line 48, : pct_4 = 0.228;
- Line 55, : av_wage = 0.2021;
- Line 57, : pct_bnd = 0.0469;
- Line 59, : unemp = 0.088;
- Line 74, : k = 0.177
- Line 101, : alpha_int = 1.0005*ones(200000,1);
- Line 105, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 139, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 174, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 175, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 212, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 217, : if fval>=0.0000000001
- Line 219, : if fval>=0.0000000001 && L>1
- Line 228, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 231, : if fval>=0.0000000001 && L>1
- Line 263, : if fvalq(j,x)>=0.00001
- Line 266, : if fvalq(j,x)>=0.00001 && L>1
- Line 279, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 282, : if fvalq(j,x)>=0.00001 && L>1
- Line 306, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 321, : fvalq(j,x) = 0.000001;
- Line 327, : if abs(fvalq(j,x))<0.0001
- Line 341, : %pause(0.001)
- Line 401, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 424, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 426, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<40
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/Cal_Iter.m**

- Line 22, : alpha_int = 1.0005*ones(200000,1);
- Line 26, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 39, : k = 0.177;
- Line 67, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 100, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 101, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 138, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 143, : if fval>=0.0000000001
- Line 145, : if fval>=0.0000000001 && L>1
- Line 154, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 157, : if fval>=0.0000000001 && L>1
- Line 189, : if fvalq(j,x)>=0.00001
- Line 192, : if fvalq(j,x)>=0.00001 && L>1
- Line 205, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 208, : if fvalq(j,x)>=0.00001 && L>1
- Line 232, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 247, : fvalq(j,x) = 0.000001;
- Line 253, : if abs(fvalq(j,x))<0.0001
- Line 267, : %pause(0.001)
- Line 344, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 347, : if abs(entry)>0.00001

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_c.m**

- Line 7, : % delta (firm death rate) = 0.266 (DADS)
- Line 11, : delta = 0.266;
- Line 84, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 68, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 73, : if fval>=0.0000000001
- Line 75, : if fval>=0.0000000001 && L>1
- Line 84, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 87, : if fval>=0.0000000001 && L>1
- Line 119, : if fvalq(j,x)>=0.00001
- Line 122, : if fvalq(j,x)>=0.00001 && L>1
- Line 135, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 138, : if fvalq(j,x)>=0.00001 && L>1
- Line 162, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 177, : fvalq(j,x) = 0.000001;
- Line 183, : if abs(fvalq(j,x))<0.0001
- Line 197, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/Cal_Iter.m**

- Line 22, : alpha_int = 1.0005*ones(200000,1);
- Line 26, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 39, : k = 0.177;
- Line 67, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 100, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 101, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 138, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 143, : if fval>=0.0000000001
- Line 145, : if fval>=0.0000000001 && L>1
- Line 154, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 157, : if fval>=0.0000000001 && L>1
- Line 189, : if fvalq(j,x)>=0.00001
- Line 192, : if fvalq(j,x)>=0.00001 && L>1
- Line 205, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 208, : if fvalq(j,x)>=0.00001 && L>1
- Line 232, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 247, : fvalq(j,x) = 0.000001;
- Line 253, : if abs(fvalq(j,x))<0.0001
- Line 267, : %pause(0.001)
- Line 344, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 346, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);
- Line 350, : if abs(entry)>0.00001

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.327 (DADS)
- Line 12, : delta = 0.327;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 322, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 324, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 326, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 328, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 337, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 339, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 341, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 343, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 410, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 411, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 412, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 413, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 414, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 415, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 416, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 417, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 418, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 419, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 429, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 430, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 440, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 441, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 13, : delta = 0.266;
- Line 57, : alpha_int = 1.0005*ones(200000,1);
- Line 61, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 236, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 238, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 240, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 242, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 251, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 253, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 255, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 257, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 336, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 337, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 340, : Qprod_L1_con(i,1) = k(i,1)*sum((1./ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001)).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 341, : Qprod_L1_unc(i,1) = k(i,1)*sum((1./ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001)).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 342, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 343, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 344, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 345, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 346, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 347, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 348, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 349, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 351, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 352, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 355, : Qprod_L2_con(i,1) = k(i,1)*sum((1./ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001)).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 356, : Qprod_L2_unc(i,1) = k(i,1)*sum((1./ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001)).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 357, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 358, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 359, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 360, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 361, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 362, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 363, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 364, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 366, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 367, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 370, : Qprod_L3_con(i,1) = k(i,1)*sum((1./ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001)).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 371, : Qprod_L3_unc(i,1) = k(i,1)*sum((1./ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001)).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 372, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 373, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 374, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 375, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 376, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 377, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 378, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 379, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/Cal_Iter.m**

- Line 22, : alpha_int = 1.0005*ones(200000,1);
- Line 26, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 39, : k = 0.177;
- Line 67, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 100, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 101, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 138, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 143, : if fval>=0.0000000001
- Line 145, : if fval>=0.0000000001 && L>1
- Line 154, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 157, : if fval>=0.0000000001 && L>1
- Line 189, : if fvalq(j,x)>=0.00001
- Line 192, : if fvalq(j,x)>=0.00001 && L>1
- Line 205, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 208, : if fvalq(j,x)>=0.00001 && L>1
- Line 232, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 247, : fvalq(j,x) = 0.000001;
- Line 253, : if abs(fvalq(j,x))<0.0001
- Line 267, : %pause(0.001)
- Line 344, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 347, : if abs(entry)>0.00001

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/Cal_Iter.m**

- Line 23, : alpha_int = 1.0005*ones(200000,1);
- Line 27, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 40, : k = 0.177;
- Line 68, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 101, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 102, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 139, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 144, : if fval>=0.0000000001
- Line 146, : if fval>=0.0000000001 && L>1
- Line 155, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 158, : if fval>=0.0000000001 && L>1
- Line 190, : if fvalq(j,x)>=0.00001
- Line 193, : if fvalq(j,x)>=0.00001 && L>1
- Line 206, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 209, : if fvalq(j,x)>=0.00001 && L>1
- Line 233, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 248, : fvalq(j,x) = 0.000001;
- Line 254, : if abs(fvalq(j,x))<0.0001
- Line 268, : %pause(0.001)
- Line 349, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 351, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);
- Line 355, : if abs(entry)>0.00001

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 322, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 324, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 326, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 328, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 337, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 339, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 341, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 343, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 410, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 411, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 412, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 413, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 414, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 415, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 416, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 417, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 418, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 419, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 429, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 430, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 440, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 441, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.327 (DADS)
- Line 12, : delta = 0.327;
- Line 25, : c = 0.225;
- Line 26, : h = 0.192;
- Line 27, : A = 0.221;
- Line 31, : fE = 4.581;
- Line 32, : f = 4.783;
- Line 33, : mw = 0.179;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.209;
- Line 43, : pct_3 = 0.352;
- Line 44, : pct_4 = 0.161;
- Line 51, : av_wage = 0.1970;
- Line 53, : pct_bnd = 0.0475;
- Line 68, : k = 0.173
- Line 93, : alpha_int = 1.0005*ones(200000,1);
- Line 97, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 131, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 166, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 167, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 200, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 205, : if fval>=0.0000000001
- Line 207, : if fval>=0.0000000001 && L>1
- Line 216, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 219, : if fval>=0.0000000001 && L>1
- Line 251, : if fvalq(j,x)>=0.00001
- Line 254, : if fvalq(j,x)>=0.00001 && L>1
- Line 267, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 270, : if fvalq(j,x)>=0.00001 && L>1
- Line 294, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 309, : fvalq(j,x) = 0.000001;
- Line 315, : if abs(fvalq(j,x))<0.0001
- Line 329, : %pause(0.001)
- Line 385, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 408, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 410, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_A.m**

- Line 7, : % delta (firm death rate) = 0.266 (DADS)
- Line 11, : delta = 0.266;
- Line 83, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/functions/fn_export_regression_tables.do**

- Line 35, : replace stars = "*" if tstat >= 1.645 & tstat < .
- Line 36, : replace stars = "**" if tstat >= 1.960 & tstat < .
- Line 37, : replace stars = "***" if tstat >= 2.576 & tstat < .
- Line 48, : replace magtxt = "NS" if tstatmag < 1.645 & !missing(tstatmag)
- Line 49, : replace mag2txt = "NS" if tstatmag2 < 1.645 & !missing(tstatmag2)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_compute_labor_costs.sas**

- Line 62, : if sbrutm<1.1*smic_m then exo_f=0.054*sbrutm;
- Line 63, : else if sbrutm<1.2*smic_m then exo_f=0.027*sbrutm;
- Line 66, : if sbrutm<1.2*smic_m then exo_f=0.054*sbrutm;
- Line 67, : else if sbrutm<1.3*smic_m then exo_f=0.027*sbrutm;
- Line 121, : if sbrutm<smic_m then exo_text=0.294*sbrutm;
- Line 122, : else if sbrutm<1.5*smic_m then exo_text=0.294/0.5*(1.5*smic_m-sbrutm);
- Line 124, : if (cpfd='P') and exo_tpa>0 and sbrutm<1.103*smic_m then exo_tpa=exo_tpa*(1-nbjour_text/(datfin-datdeb+1));
- Line 131, : if sbrutm<smic_m then exo_text=0.294*sbrutm;
- Line 132, : else if sbrutm<1.5*smic_m then exo_text=0.294/0.5*(1.5*smic_m-sbrutm);
- Line 134, : if (cpfd='P') and exo_tpa>0 and sbrutm<1.103*smic_m then exo_tpa=0;
- Line 141, : if sbrutm<smic_m then exo_j1 = 0.128*sbrutm;
- Line 142, : else if sbrutm<1.2*smic_m then exo_j1 = 0.128/0.2*(1.2*smic_m-sbrutm);
- Line 159, : if sbrutm<plafond_smic then exo_j2 = 0.182*sbrutm;
- Line 160, : else if sbrutm<1.33*plafond_smic then exo_j2 = 0.182/0.33*(1.33*plafond_smic-sbrutm);
- Line 167, : if sbrutm<plafond_smic then exo_j2 = 0.182*sbrutm;
- Line 168, : else if sbrutm<1.33*plafond_smic then exo_j2 = 0.182/0.33*(1.33*plafond_smic-sbrutm);
- Line 173, : if sbrutm<plafond_smic then exo_j2 = 0.182*sbrutm;
- Line 174, : else if sbrutm<1.3*plafond_smic then exo_j2 = 0.182/0.3*(1.3*plafond_smic-sbrutm);
- Line 182, : if sbrutm<plafond_smic then exo_j2 = 0.182*sbrutm;
- Line 183, : else if sbrutm<1.3*plafond_smic then exo_j2 = 0.182/0.3*(1.3*plafond_smic-sbrutm);
- Line 193, : if sbrutm<plafond_smic then exo_j2 = 0.182*sbrutm;
- Line 194, : else if sbrutm<1.3*plafond_smic then exo_j2 = 0.182/0.3*(1.3*plafond_smic-sbrutm);
- Line 208, : aide1=0;aide2=9000/6.55957+3000/6.55957*mdo+4000/6.55957*mrtt;
- Line 219, : aide1=9000/6.55957+3000/6.55957*mdo+4000/6.55957*mrtt;
- Line 220, : aide2=8000/6.55957+2000/6.55957*mdo+4000/6.55957*mrtt;
- Line 224, : aide1=0;aide2=9000/6.55957+3000/6.55957*mdo+4000/6.55957*mrtt;end;
- Line 225, : else do; aide1=0;aide2=7000/6.55957+2000/6.55957*mdo+4000/6.55957*mrtt;end;
- Line 238, : aide1=8000/6.55957+2000/6.55957*mdo+4000/6.55957*mrtt;
- Line 239, : aide2=7000/6.55957+1000/6.55957*mdo+4000/6.55957*mrtt;
- Line 243, : aide1=9000/6.55957+3000/6.55957*mdo+4000/6.55957*mrtt;
- Line 244, : aide2=8000/6.55957+2000/6.55957*mdo+4000/6.55957*mrtt;
- Line 247, : aide1=7000/6.55957+2000/6.55957*mdo+4000/6.55957*mrtt;
- Line 248, : aide2=6000/6.55957+1000/6.55957*mdo+4000/6.55957*mrtt;
- Line 252, : aide1=0;aide2=7000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 265, : aide1=7000/6.55957+1000/6.55957*mdo+4000/6.55957*mrtt;
- Line 266, : aide2=6000/6.55957+4000/6.55957*mrtt;
- Line 270, : aide1=8000/6.55957+2000/6.55957*mdo+4000/6.55957*mrtt;
- Line 271, : aide2=7000/6.55957+1000/6.55957*mdo+4000/6.55957*mrtt;
- Line 273, : else do; aide1=6000/6.55957+1000/6.55957*mdo+4000/6.55957*mrtt;
- Line 274, : aide2=5000/6.55957+4000/6.55957*mrtt;end;
- Line 277, : aide1=7000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 278, : aide2=6000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));end;
- Line 280, : aide1=0;aide2=6000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));end;
- Line 292, : aide1=6000/6.55957+4000/6.55957*mrtt;
- Line 293, : aide2=5000/6.55957+4000/6.55957*mrtt;
- Line 297, : aide1=7000/6.55957+1000/6.55957*mdo+4000/6.55957*mrtt;
- Line 298, : aide2=6000/6.55957+4000/6.55957*mrtt;
- Line 300, : else do; aide1=5000/6.55957+4000/6.55957*mrtt;aide2=5000/6.55957+4000/6.55957*mrtt;end;
- Line 303, : aide1=6000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 304, : aide2=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 307, : aide1=6000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 308, : aide2=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 321, : aide1=5000/6.55957+4000/6.55957*mrtt; aide2=0;
- Line 325, : aide1=6000/6.55957+4000/6.55957*mrtt;
- Line 326, : aide2=5000/6.55957+4000/6.55957*mrtt;
- Line 328, : else do; aide1=5000/6.55957+4000/6.55957*mrtt;aide2=5000/6.55957+4000/6.55957*mrtt;end;
- Line 331, : aide1=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 332, : aide2=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 335, : aide1=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 336, : aide2=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 349, : if mois_aide<7 then do; aide1=5000/6.55957+4000/6.55957*mrtt;aide2=0;end;
- Line 350, : else do; aide1=5000/6.55957+4000/6.55957*mrtt;aide2=0;end;
- Line 353, : aide1=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 354, : aide2=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));end;
- Line 356, : aide1=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));
- Line 357, : aide2=5000/6.55957+1000/6.55957*(typeacc=5)+4000/6.55957*mrtt*(typeacc in (1,3));end;
- Line 454, : if sbh < smic_h then exo_fil = 0.208*sbrutm;
- Line 455, : else if sbh< 1.5*smic_h then exo_fil = 0.208/0.5*(1.5*smic_h*nbheur/duree*30/sbrutm - 1)*sbrutm;
- Line 467, : if sbh < smic_h then exo_fil1 = 0.208*sbrutm;
- Line 468, : else if sbh< 1.5*smic_h then exo_fil1 = 0.208/0.5*(1.5*smic_h*nbheur/duree*30/sbrutm - 1)*sbrutm;
- Line 469, : if sbh < smic_h then exo_fil2 = 0.234*sbrutm;
- Line 470, : else if sbh< 1.6*smic_h then exo_fil2 = 0.234/0.6*(1.6*smic_h*nbheur/duree*30/sbrutm - 1)*sbrutm;
- Line 480, : if sbh < smic_h then do; exo_fil1 = 0.234*sbrutm;end;
- Line 481, : else if sbh < 1.6*smic_h then do; exo_fil1 = 0.234/0.6*(1.6*smic_h*nbheur/duree*30/sbrutm - 1)*sbrutm; end;
- Line 495, : if ((sbh < smic_h) and (  e_eqtp_ent< 20)) then exo_fil = 0.281*sbrutm;
- Line 496, : else if ((sbh< 1.6*smic_h) and (  e_eqtp_ent< 20)) then exo_fil = 0.281/0.6*(1.6*smic_h*nbheur/duree*30/sbrutm - 1)*sbrutm;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 68, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 73, : if fval>=0.0000000001
- Line 75, : if fval>=0.0000000001 && L>1
- Line 84, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 87, : if fval>=0.0000000001 && L>1
- Line 119, : if fvalq(j,x)>=0.00001
- Line 122, : if fvalq(j,x)>=0.00001 && L>1
- Line 135, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 138, : if fvalq(j,x)>=0.00001 && L>1
- Line 162, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 177, : fvalq(j,x) = 0.000001;
- Line 183, : if abs(fvalq(j,x))<0.0001
- Line 197, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 105, : k(i+1,1) = (i<(length(mw_vec)-2))*k(i,1) + (i>=(length(mw_vec)-2))*0.0594;
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_8.R**

- Line 26, : baseline_sim <- "1.000; h = 0.193; c = 0.220; A = 0.240"
- Line 181, : "Figure8_C.pdf",  "OUTPUT_WORKERS",     c(0.205, 0.235), "Output per worker (in real terms)",

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/Cal_Iter.m**

- Line 14, : alpha_int = 1.0005*ones(200000,1);
- Line 18, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 26, : k = 0.175;
- Line 35, : while abs(entry)>0.000001 && nl<50
- Line 46, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.00000001);
- Line 78, : reg_inc = (fs_w>0).*(cumsum(fs_w)<0.995);
- Line 84, : if abs(entry)>0.000001

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 68, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 73, : if fval>=0.0000000001
- Line 75, : if fval>=0.0000000001 && L>1
- Line 84, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 87, : if fval>=0.0000000001 && L>1
- Line 119, : if fvalq(j,x)>=0.00001
- Line 122, : if fvalq(j,x)>=0.00001 && L>1
- Line 135, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 138, : if fvalq(j,x)>=0.00001 && L>1
- Line 162, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 177, : fvalq(j,x) = 0.000001;
- Line 183, : if abs(fvalq(j,x))<0.0001
- Line 197, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.327 (DADS)
- Line 12, : delta = 0.327;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 323, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 325, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 327, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 329, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 338, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 340, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 342, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 344, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 419, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 420, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 430, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 431, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 441, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 442, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 443, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 444, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 445, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 446, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 447, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 448, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 449, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 450, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 66, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 71, : if fval>=0.0000000001
- Line 73, : if fval>=0.0000000001 && L>1
- Line 82, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 85, : if fval>=0.0000000001 && L>1
- Line 117, : if fvalq(j,x)>=0.00001
- Line 120, : if fvalq(j,x)>=0.00001 && L>1
- Line 133, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 136, : if fvalq(j,x)>=0.00001 && L>1
- Line 160, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 175, : fvalq(j,x) = 0.000001;
- Line 181, : if abs(fvalq(j,x))<0.0001
- Line 195, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.327 (DADS)
- Line 12, : delta = 0.327;
- Line 25, : c = 0.236;
- Line 26, : h = 0.195;
- Line 27, : A = 0.283;
- Line 32, : f = 0.050;
- Line 33, : mw = 0.179;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.209;
- Line 43, : pct_3 = 0.2921;
- Line 44, : pct_4 = 0.1336;
- Line 51, : av_wage = 0.1970;
- Line 53, : pct_bnd = 0.0475;
- Line 55, : pct_se = 0.1701;
- Line 70, : k = 0.173
- Line 95, : alpha_int = 1.0005*ones(200000,1);
- Line 99, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 133, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 168, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 169, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 202, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 207, : if fval>=0.0000000001
- Line 209, : if fval>=0.0000000001 && L>1
- Line 218, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 221, : if fval>=0.0000000001 && L>1
- Line 253, : if fvalq(j,x)>=0.00001
- Line 256, : if fvalq(j,x)>=0.00001 && L>1
- Line 269, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 272, : if fvalq(j,x)>=0.00001 && L>1
- Line 296, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 311, : fvalq(j,x) = 0.000001;
- Line 317, : if abs(fvalq(j,x))<0.0001
- Line 331, : %pause(0.001)
- Line 387, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 410, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 412, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/MACROS/macros_dads_job_extraction.sas**

- Line 42, : s_brut = s_brut / 6.55957;
- Line 43, : s_net = s_net / 6.55957;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 71, : h = 0.145
- Line 74, : while abs(diff)>0.00005
- Line 76, : diff = output_h/output-1.064
- Line 82, : c = 0.135
- Line 85, : while abs(diff)>0.00005
- Line 87, : diff = output_c/output-1.064
- Line 96, : while abs(diff)>0.00005
- Line 98, : diff = output_l/output-1.064
- Line 104, : A = 0.255
- Line 107, : while abs(diff)>0.00005
- Line 109, : diff = output_A/output-1.064

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 25, : c = 0.219;
- Line 26, : h = 0.194;
- Line 27, : A = 0.240;
- Line 31, : fE = 5.807;
- Line 32, : f = 5.707;
- Line 33, : mw = 0.185;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.203;
- Line 43, : pct_3 = 0.446;
- Line 44, : pct_4 = 0.228;
- Line 51, : av_wage = 0.2021;
- Line 53, : pct_bnd = 0.0469;
- Line 68, : k = 0.177
- Line 93, : alpha_int = 1.0005*ones(200000,1);
- Line 97, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 131, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 166, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 167, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 204, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 209, : if fval>=0.0000000001
- Line 211, : if fval>=0.0000000001 && L>1
- Line 220, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 223, : if fval>=0.0000000001 && L>1
- Line 255, : if fvalq(j,x)>=0.00001
- Line 258, : if fvalq(j,x)>=0.00001 && L>1
- Line 271, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 274, : if fvalq(j,x)>=0.00001 && L>1
- Line 298, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 313, : fvalq(j,x) = 0.000001;
- Line 319, : if abs(fvalq(j,x))<0.0001
- Line 333, : %pause(0.001)
- Line 389, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 412, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 414, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<40
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/Cal_Iter.m**

- Line 20, : alpha_int = 1.0005*ones(200000,1);
- Line 24, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 64, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 97, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 98, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 131, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 136, : if fval>=0.0000000001
- Line 138, : if fval>=0.0000000001 && L>1
- Line 147, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 150, : if fval>=0.0000000001 && L>1
- Line 182, : if fvalq(j,x)>=0.00001
- Line 185, : if fvalq(j,x)>=0.00001 && L>1
- Line 198, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 201, : if fvalq(j,x)>=0.00001 && L>1
- Line 225, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 240, : fvalq(j,x) = 0.000001;
- Line 246, : if abs(fvalq(j,x))<0.0001
- Line 260, : %pause(0.001)
- Line 337, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 339, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<40
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 66, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 71, : if fval>=0.0000000001
- Line 73, : if fval>=0.0000000001 && L>1
- Line 82, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 85, : if fval>=0.0000000001 && L>1
- Line 117, : if fvalq(j,x)>=0.00001
- Line 120, : if fvalq(j,x)>=0.00001 && L>1
- Line 133, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 136, : if fvalq(j,x)>=0.00001 && L>1
- Line 160, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 175, : fvalq(j,x) = 0.000001;
- Line 181, : if abs(fvalq(j,x))<0.0001
- Line 195, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 105, : k(i+1,1) = (i<(length(mw_vec)-3))*k(i,1) + (i>=(length(mw_vec)-3))*0.0608;
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/Cal_Iter.m**

- Line 20, : alpha_int = 1.0005*ones(200000,1);
- Line 24, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 64, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 97, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 98, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 131, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 136, : if fval>=0.0000000001
- Line 138, : if fval>=0.0000000001 && L>1
- Line 147, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 150, : if fval>=0.0000000001 && L>1
- Line 182, : if fvalq(j,x)>=0.00001
- Line 185, : if fvalq(j,x)>=0.00001 && L>1
- Line 198, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 201, : if fvalq(j,x)>=0.00001 && L>1
- Line 225, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 240, : fvalq(j,x) = 0.000001;
- Line 246, : if abs(fvalq(j,x))<0.0001
- Line 260, : %pause(0.001)
- Line 337, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 339, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinQMW.m**

- Line 15, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 19, : if fval>=0.0000000001
- Line 21, : if fval>=0.0000000001 && L>1
- Line 29, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 32, : if fval>=0.0000000001 && L>1
- Line 54, : good = (fval<0.0000000001) && (dln0<=0);
- Line 57, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.370 (DADS)
- Line 12, : delta = 0.370;
- Line 25, : c = 0.327;
- Line 26, : h = 0.218;
- Line 27, : A = 0.234;
- Line 31, : fE = 4.690;
- Line 32, : f = 2.452;
- Line 33, : mw = 0.178;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.241;
- Line 43, : pct_3 = 0.267;
- Line 44, : pct_4 = 0.0988;
- Line 51, : av_wage = 0.2004;
- Line 53, : pct_bnd = 0.0551;
- Line 68, : k = 0.178
- Line 93, : alpha_int = 1.0005*ones(200000,1);
- Line 97, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 131, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 166, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 167, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 200, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 205, : if fval>=0.0000000001
- Line 207, : if fval>=0.0000000001 && L>1
- Line 216, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 219, : if fval>=0.0000000001 && L>1
- Line 251, : if fvalq(j,x)>=0.00001
- Line 254, : if fvalq(j,x)>=0.00001 && L>1
- Line 267, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 270, : if fvalq(j,x)>=0.00001 && L>1
- Line 294, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 309, : fvalq(j,x) = 0.000001;
- Line 315, : if abs(fvalq(j,x))<0.0001
- Line 329, : %pause(0.001)
- Line 385, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 408, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 410, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/Calibration.m**

- Line 9, : % delta (firm death rate) = 0.266 (DADS)
- Line 13, : delta = 0.266;
- Line 18, : c = 0.037;
- Line 19, : A = 0.739;
- Line 20, : gamma = 1.090;
- Line 23, : mw = 0.202;
- Line 27, : teach = 0.0982;
- Line 29, : pct_su = 0.203;
- Line 33, : av_wage = 0.2021;
- Line 35, : size_dist = -1.095;
- Line 37, : aw_ratio = 1.141;
- Line 40, : k = 0.175
- Line 63, : alpha_int = 1.0005*ones(200000,1);
- Line 67, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 79, : while abs(entry)>0.000001
- Line 91, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.00000001);
- Line 127, : reg_inc = (fs_w>0).*(cumsum(fs_w)<0.995);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/7_SAS_APPENDIX_G/01_compute_table_g1_zero_layer_moment.sas**

- Line 3, : Purpose: Reproduce the CASD-derived Table G1 target "Share of 0-layer firms" (0.170)
- Line 189, : rounded_to_3_decimals=round(moment_value,0.001);
- Line 190, : manuscript_target=0.170;
- Line 228, : put 'WARNING: Recomputed Table G1 moment does not match 0.170 at three decimals. Review DOI versions, source members, and historical selection.';

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 68, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 73, : if fval>=0.0000000001
- Line 75, : if fval>=0.0000000001 && L>1
- Line 84, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 87, : if fval>=0.0000000001 && L>1
- Line 119, : if fvalq(j,x)>=0.00001
- Line 122, : if fvalq(j,x)>=0.00001 && L>1
- Line 135, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 138, : if fvalq(j,x)>=0.00001 && L>1
- Line 162, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 177, : fvalq(j,x) = 0.000001;
- Line 183, : if abs(fvalq(j,x))<0.0001
- Line 197, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 66, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 71, : if fval>=0.0000000001
- Line 73, : if fval>=0.0000000001 && L>1
- Line 82, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 85, : if fval>=0.0000000001 && L>1
- Line 117, : if fvalq(j,x)>=0.00001
- Line 120, : if fvalq(j,x)>=0.00001 && L>1
- Line 133, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 136, : if fvalq(j,x)>=0.00001 && L>1
- Line 160, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 175, : fvalq(j,x) = 0.000001;
- Line 181, : if abs(fvalq(j,x))<0.0001
- Line 195, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 26, : alpha_int = 1.0005*ones(200000,1);
- Line 30, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 37, : mw_vec = [mw*0.98; mw*0.99; mw; 1.0025*mw; 1.005*mw; 1.0075*mw; 1.01*mw; 1.0125*mw; 1.015*mw; 1.02*mw];

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 105, : k(i+1,1) = k(i,1);%(i<(length(mw_vec)-2))*k(i,1) + (i>=(length(mw_vec)-2))*0.0608;
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 106, : k(i+1,1) = k(i,1);%(i<(length(mw_vec)-2))*k(i,1) + (i>=(length(mw_vec)-2))*0.0608;
- Line 205, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 207, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 209, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 211, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 220, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 222, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 224, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 226, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 293, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 294, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 295, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 296, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 297, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 298, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 299, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 300, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 301, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 302, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 304, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 305, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 306, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 307, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 308, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 309, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 310, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 311, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 312, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 313, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 315, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 316, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 317, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 318, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 319, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 320, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 321, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 322, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 323, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 324, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 25, : c = 0.2501;
- Line 26, : h = 0.1940;
- Line 27, : A = 0.2301;
- Line 28, : g2 = -12.108;
- Line 29, : g3 = -15.414;
- Line 30, : g4 = -25.191;
- Line 31, : fE = 4.383;
- Line 32, : f = 5.030;
- Line 33, : mw = 0.1799;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.204;
- Line 43, : pct_3 = 0.446;
- Line 44, : pct_4 = 0.228;
- Line 51, : av_wage = 0.2021;
- Line 53, : pct_bnd = 0.032;
- Line 68, : k = 0.178
- Line 93, : alpha_int = 1.0005*ones(200000,1);
- Line 97, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 131, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 166, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 167, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 204, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 209, : if fval>=0.0000000001
- Line 211, : if fval>=0.0000000001 && L>1
- Line 220, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 223, : if fval>=0.0000000001 && L>1
- Line 255, : if fvalq(j,x)>=0.00001
- Line 258, : if fvalq(j,x)>=0.00001 && L>1
- Line 271, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 274, : if fvalq(j,x)>=0.00001 && L>1
- Line 298, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 313, : fvalq(j,x) = 0.000001;
- Line 319, : if abs(fvalq(j,x))<0.0001
- Line 333, : %pause(0.001)
- Line 389, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 412, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 414, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 10, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.00000001);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_F2.R**

- Line 18, : baseline_sim <- "1.000; h = 0.193; c = 0.220; A = 0.240"
- Line 139, : H < 0.193 & MW_3 >= 1.4
- Line 143, : (H < 0.193 & MW_3 >= 1.4) |

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 66, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 71, : if fval>=0.0000000001
- Line 73, : if fval>=0.0000000001 && L>1
- Line 82, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 85, : if fval>=0.0000000001 && L>1
- Line 117, : if fvalq(j,x)>=0.00001
- Line 120, : if fvalq(j,x)>=0.00001 && L>1
- Line 133, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 136, : if fvalq(j,x)>=0.00001 && L>1
- Line 160, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 175, : fvalq(j,x) = 0.000001;
- Line 181, : if abs(fvalq(j,x))<0.0001
- Line 195, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 66, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 71, : if fval>=0.0000000001
- Line 73, : if fval>=0.0000000001 && L>1
- Line 82, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 85, : if fval>=0.0000000001 && L>1
- Line 117, : if fvalq(j,x)>=0.00001
- Line 120, : if fvalq(j,x)>=0.00001 && L>1
- Line 133, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 136, : if fvalq(j,x)>=0.00001 && L>1
- Line 160, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 175, : fvalq(j,x) = 0.000001;
- Line 181, : if abs(fvalq(j,x))<0.0001
- Line 195, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/01_build_descriptive_tables.do**

- Line 76, : gen double lns_s3_real = lns_s3 - 0.056
- Line 88, : global GMR2_shock = r(mean) - 0.056

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_mw.m**

- Line 7, : % delta (firm death rate) = 0.266 (DADS)
- Line 11, : delta = 0.266;
- Line 78, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.370 (DADS)
- Line 12, : delta = 0.370;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 322, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 324, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 326, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 328, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 337, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 339, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 341, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 343, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 410, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 411, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 412, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 413, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 414, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 415, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 416, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 417, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 418, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 419, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 429, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 430, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 440, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 441, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 68, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 73, : if fval>=0.0000000001
- Line 75, : if fval>=0.0000000001 && L>1
- Line 84, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 87, : if fval>=0.0000000001 && L>1
- Line 119, : if fvalq(j,x)>=0.00001
- Line 122, : if fvalq(j,x)>=0.00001 && L>1
- Line 135, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 138, : if fvalq(j,x)>=0.00001 && L>1
- Line 162, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 177, : fvalq(j,x) = 0.000001;
- Line 183, : if abs(fvalq(j,x))<0.0001
- Line 197, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/FreeEntrySolve_MW.m**

- Line 10, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.00000001);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW.m**

- Line 7, : % delta (firm death rate) = 0.266 (DADS)
- Line 11, : delta = 0.266;
- Line 66, : pause(0.001)
- Line 101, : if ac_vec(i,4)>(ac_vec(i,3)+0.025)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_h.m**

- Line 7, : % delta (firm death rate) = 0.266 (DADS)
- Line 11, : delta = 0.266;
- Line 83, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 106, : k(i+1,1) = (i<(length(mw_vec)-3))*k(i,1) + (i>=(length(mw_vec)-3))*0.048;
- Line 205, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 207, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 209, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 211, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 220, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 222, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 224, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 226, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 293, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 294, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 295, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 296, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 297, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 298, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 299, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 300, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 301, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 302, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 304, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 305, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 306, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 307, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 308, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 309, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 310, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 311, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 312, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 313, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 315, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 316, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 317, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 318, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 319, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 320, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 321, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 322, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 323, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 324, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/Cal_Iter.m**

- Line 20, : alpha_int = 1.0005*ones(200000,1);
- Line 24, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 64, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 97, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 98, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 131, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 136, : if fval>=0.0000000001
- Line 138, : if fval>=0.0000000001 && L>1
- Line 147, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 150, : if fval>=0.0000000001 && L>1
- Line 182, : if fvalq(j,x)>=0.00001
- Line 185, : if fvalq(j,x)>=0.00001 && L>1
- Line 198, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 201, : if fvalq(j,x)>=0.00001 && L>1
- Line 225, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 240, : fvalq(j,x) = 0.000001;
- Line 246, : if abs(fvalq(j,x))<0.0001
- Line 260, : %pause(0.001)
- Line 337, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 339, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/Cal_Iter.m**

- Line 20, : alpha_int = 1.0005*ones(200000,1);
- Line 24, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 64, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 97, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 98, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 131, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 136, : if fval>=0.0000000001
- Line 138, : if fval>=0.0000000001 && L>1
- Line 147, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 150, : if fval>=0.0000000001 && L>1
- Line 182, : if fvalq(j,x)>=0.00001
- Line 185, : if fvalq(j,x)>=0.00001 && L>1
- Line 198, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 201, : if fvalq(j,x)>=0.00001 && L>1
- Line 225, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 240, : fvalq(j,x) = 0.000001;
- Line 246, : if abs(fvalq(j,x))<0.0001
- Line 260, : %pause(0.001)
- Line 337, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 339, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/ProfitMaximizationMW_GE.m**

- Line 9, : % delta (firm death rate) = 0.266 (DADS)
- Line 13, : delta = 0.266;
- Line 55, : alpha_int = 1.0005*ones(200000,1);
- Line 59, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 105, : k(i+1,1) = k(i,1);%(i<(length(mw_vec)-2))*k(i,1) + (i>=(length(mw_vec)-2))*0.0608;
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<40
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 71, : h = 0.165
- Line 74, : while abs(diff)>0.00005
- Line 76, : diff = output_h/output-1.032
- Line 82, : c = 0.165
- Line 85, : while abs(diff)>0.00005
- Line 87, : diff = output_c/output-1.032
- Line 96, : while abs(diff)>0.00005
- Line 98, : diff = output_l/output-1.032
- Line 104, : A = 0.248
- Line 107, : while abs(diff)>0.00005
- Line 109, : diff = output_A/output-1.032

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 25, : c = 0.2342;
- Line 26, : h = 0.1929;
- Line 27, : A = 0.2398;
- Line 28, : g2 = -12.131;
- Line 29, : g3 = -15.436;
- Line 30, : g4 = -24.947;
- Line 31, : fE = 5.020;
- Line 32, : f = 5.436;
- Line 33, : mw = 0.1872;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.203;
- Line 43, : pct_3 = 0.446;
- Line 44, : pct_4 = 0.228;
- Line 51, : mw_mean = 0.4221;
- Line 53, : pct_bnd = 0.0469;
- Line 68, : k = 0.182
- Line 93, : alpha_int = 1.0005*ones(200000,1);
- Line 97, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 131, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 166, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 167, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 204, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 209, : if fval>=0.0000000001
- Line 211, : if fval>=0.0000000001 && L>1
- Line 220, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 223, : if fval>=0.0000000001 && L>1
- Line 255, : if fvalq(j,x)>=0.00001
- Line 258, : if fvalq(j,x)>=0.00001 && L>1
- Line 271, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 274, : if fvalq(j,x)>=0.00001 && L>1
- Line 298, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 313, : fvalq(j,x) = 0.000001;
- Line 319, : if abs(fvalq(j,x))<0.0001
- Line 333, : %pause(0.001)
- Line 389, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 412, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<40
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 71, : h = 0.122
- Line 72, : k_h = k + 0.016;
- Line 74, : while abs(diff)>0.00005
- Line 76, : diff = output_h/output-1.096
- Line 82, : c = 0.106
- Line 83, : k_c = k + 0.017;
- Line 85, : while abs(diff)>0.00005
- Line 87, : diff = output_c/output-1.096
- Line 94, : k_l = k + 0.018;
- Line 96, : while abs(diff)>0.00005
- Line 98, : diff = output_l/output-1.096
- Line 104, : A = 0.263
- Line 105, : k_A = k + 0.017;
- Line 107, : while abs(diff)>0.00005
- Line 109, : diff = output_A/output-1.096

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<40
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 137, : if fvalq(j,x)>=0.00001
- Line 140, : if fvalq(j,x)>=0.00001 && L>1
- Line 153, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 156, : if fvalq(j,x)>=0.00001 && L>1
- Line 180, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 195, : fvalq(j,x) = 0.000001;
- Line 201, : if abs(fvalq(j,x))<0.0001
- Line 215, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 66, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 71, : if fval>=0.0000000001
- Line 73, : if fval>=0.0000000001 && L>1
- Line 82, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 85, : if fval>=0.0000000001 && L>1
- Line 117, : if fvalq(j,x)>=0.00001
- Line 120, : if fvalq(j,x)>=0.00001 && L>1
- Line 133, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 136, : if fvalq(j,x)>=0.00001 && L>1
- Line 160, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 175, : fvalq(j,x) = 0.000001;
- Line 181, : if abs(fvalq(j,x))<0.0001
- Line 195, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/PMMW_GE.m**

- Line 12, : while (abs(entry)>0.00001 || nl<3) && nl<30
- Line 47, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 48, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 86, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 91, : if fval>=0.0000000001
- Line 93, : if fval>=0.0000000001 && L>1
- Line 102, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 105, : if fval>=0.0000000001 && L>1
- Line 133, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 158, : if fvalq(j,x)>=0.00001
- Line 161, : if fvalq(j,x)>=0.00001 && L>1
- Line 174, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 177, : if fvalq(j,x)>=0.00001 && L>1
- Line 201, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 216, : fvalq(j,x) = 0.000001;
- Line 222, : if abs(fvalq(j,x))<0.0001
- Line 236, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 68, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 73, : if fval>=0.0000000001
- Line 75, : if fval>=0.0000000001 && L>1
- Line 84, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 87, : if fval>=0.0000000001 && L>1
- Line 119, : if fvalq(j,x)>=0.00001
- Line 122, : if fvalq(j,x)>=0.00001 && L>1
- Line 135, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 138, : if fvalq(j,x)>=0.00001 && L>1
- Line 162, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 177, : fvalq(j,x) = 0.000001;
- Line 183, : if abs(fvalq(j,x))<0.0001
- Line 197, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 322, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 324, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 326, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 328, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 337, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 339, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 341, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 343, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 410, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 411, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 412, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 413, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 414, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 415, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 416, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 417, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 418, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 419, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 429, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 430, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 440, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 441, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/FreeEntrySolve_MW.m**

- Line 28, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 29, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 62, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 67, : if fval>=0.0000000001
- Line 69, : if fval>=0.0000000001 && L>1
- Line 78, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 81, : if fval>=0.0000000001 && L>1
- Line 113, : if fvalq(j,x)>=0.00001
- Line 116, : if fvalq(j,x)>=0.00001 && L>1
- Line 129, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 132, : if fvalq(j,x)>=0.00001 && L>1
- Line 156, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 171, : fvalq(j,x) = 0.000001;
- Line 177, : if abs(fvalq(j,x))<0.0001
- Line 191, : %pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 10, : % delta (firm death rate) = 0.266 (DADS)
- Line 14, : delta = 0.266;
- Line 56, : alpha_int = 1.0005*ones(200000,1);
- Line 60, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 324, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 326, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 328, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 330, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 339, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 341, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 343, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 345, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 412, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 413, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 414, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 415, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 416, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 417, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 418, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 419, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 420, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 421, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 429, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 430, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 431, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 432, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 440, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 441, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 442, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 443, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 54, : alpha_int = 1.0005*ones(200000,1);
- Line 58, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 322, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 324, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 326, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 328, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 337, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 339, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 341, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 343, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 410, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 411, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 412, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 413, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 414, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 415, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 416, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 417, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 418, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 419, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 421, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 422, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 423, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 424, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 425, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 426, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 427, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 428, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 429, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 430, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 432, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 433, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 434, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 435, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 436, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 437, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 438, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 439, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 440, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 441, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 105, : k(i+1,1) = k(i,1);%(i<(length(mw_vec)-1))*k(i,1) + (i==(length(mw_vec)-1))*0.0625;
- Line 204, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 206, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 208, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 210, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 219, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 221, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 223, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 225, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 292, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 293, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 294, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 295, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 296, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 297, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 298, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 299, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 300, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 301, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 303, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 304, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 305, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 306, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 307, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 308, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 309, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 310, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 311, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 312, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 314, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 315, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 316, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 317, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 318, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 319, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 320, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 321, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 322, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 323, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/FreeEntrySolve_MW.m**

- Line 30, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 31, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 58, : optionsN = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000001,'TolFun',0.000001);
- Line 69, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 74, : if fval>=0.0000000001
- Line 76, : if fval>=0.0000000001 && L>1
- Line 85, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 88, : if fval>=0.0000000001 && L>1
- Line 116, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);
- Line 141, : if fvalq(j,x)>=0.00001
- Line 144, : if fvalq(j,x)>=0.00001 && L>1
- Line 157, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 160, : if fvalq(j,x)>=0.00001 && L>1
- Line 184, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 199, : fvalq(j,x) = 0.000001;
- Line 205, : if abs(fvalq(j,x))<0.0001
- Line 219, : pause(0.001)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/Calibration.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 25, : c = 0.2279;
- Line 26, : h = 0.1919;
- Line 27, : A = 0.2475;
- Line 28, : g2 = -12.153;
- Line 29, : g3 = -15.457;
- Line 30, : g4 = -25.000;
- Line 31, : fE = 5.193;
- Line 32, : f = 5.515;
- Line 33, : mw = 0.1934;
- Line 39, : teach = 0.0982;
- Line 41, : pct_su = 0.203;
- Line 43, : pct_3 = 0.446;
- Line 44, : pct_4 = 0.228;
- Line 51, : kaitz = 0.5400;
- Line 53, : pct_bnd = 0.0469;
- Line 68, : k = 0.177
- Line 93, : alpha_int = 1.0005*ones(200000,1);
- Line 97, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 131, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 166, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 167, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 204, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 209, : if fval>=0.0000000001
- Line 211, : if fval>=0.0000000001 && L>1
- Line 220, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 223, : if fval>=0.0000000001 && L>1
- Line 255, : if fvalq(j,x)>=0.00001
- Line 258, : if fvalq(j,x)>=0.00001 && L>1
- Line 271, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 274, : if fvalq(j,x)>=0.00001 && L>1
- Line 298, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 313, : fvalq(j,x) = 0.000001;
- Line 319, : if abs(fvalq(j,x))<0.0001
- Line 333, : %pause(0.001)
- Line 389, : ksdensity(w_dist(:,2),[0.05:0.001:0.35]','Weights',w_dist(:,1))
- Line 412, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Cal_Iter.m**

- Line 22, : alpha_int = 1.0005*ones(200000,1);
- Line 26, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 39, : k = 0.177;
- Line 67, : while (abs(entry)>0.00001 || nl<3) && nl<15
- Line 100, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00001,'TolFun',0.00001);
- Line 101, : q_opt(1,x) = fzero(fcpm0,[0.0001 A-0.0001],options);
- Line 138, : zoptions = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 143, : if fval>=0.0000000001
- Line 145, : if fval>=0.0000000001 && L>1
- Line 154, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 157, : if fval>=0.0000000001 && L>1
- Line 189, : if fvalq(j,x)>=0.00001
- Line 192, : if fvalq(j,x)>=0.00001 && L>1
- Line 205, : if qz_vec(2,1)<min_z || fvalq(j,x)>=0.00001
- Line 208, : if fvalq(j,x)>=0.00001 && L>1
- Line 232, : replace = (L==1) && (fvalq(j,x)>=0.00001 || dln0>0);
- Line 247, : fvalq(j,x) = 0.000001;
- Line 253, : if abs(fvalq(j,x))<0.0001
- Line 267, : %pause(0.001)
- Line 344, : pct_bnd_r = sum(wd1(w_dist(:,2)<=mw+0.000001))*(mw>=k);
- Line 346, : %[mw_tar,fvm] = fzero(fmwt,[k-0.001 av_wage_r]);
- Line 350, : if abs(entry)>0.00001

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/ProfitMaxQMW.m**

- Line 18, : options = optimset('MaxFunEvals',100000,'MaxIter',100000,'TolX',0.00000000001,'TolFun',0.00000000001);
- Line 22, : if fval>=0.0000000001
- Line 24, : if fval>=0.0000000001 && L>1
- Line 32, : if z_vec_opt(1,1)<min_z || fval>=0.0000000001
- Line 35, : if fval>=0.0000000001 && L>1
- Line 57, : good = (fval<0.0000000001) && (dln0<=0);
- Line 60, : replace = (L==1) && (fval>=0.0000000001 || dln0>0);

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20240974-1/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/ProfitMaximizationMW_GE.m**

- Line 8, : % delta (firm death rate) = 0.266 (DADS)
- Line 12, : delta = 0.266;
- Line 59, : alpha_int = 1.0005*ones(200000,1);
- Line 63, : alpha_int(i,1) = alpha_int(i-1,1) + 0.001 + 0.01*(i-1)/100000;
- Line 100, : fmwt = @(wx)MW_Tar_Solve(wx,wd1,w_dist(:,2*(i-1)+1:2*i),0.0469);
- Line 101, : [mw_tar,fvm] = fzero(fmwt,[k(1,1)-0.001 av_wage_r])
- Line 106, : k(i+1,1) = (i<(length(mw_vec)-3))*k(i,1) + (i>=(length(mw_vec)-3))*0.0608;
- Line 205, : pct_bnd_work(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 207, : pct_bnd_work_L1(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 209, : pct_bnd_work_L2(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 211, : pct_bnd_work_L3(i,1) = sum(wd1(wd2<=mw_vec(i,1)+0.000001).*Ls1(wd2<=mw_vec(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 220, : pct_bnd_firm(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1));
- Line 222, : pct_bnd_firm_L1(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 224, : pct_bnd_firm_L2(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 226, : pct_bnd_firm_L3(i,1) = sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1.*Ls1);
- Line 293, : aac_L1_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 294, : aac_L1_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 295, : amc_L1_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 296, : amc_L1_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 297, : aa_L1_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 298, : aa_L1_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 299, : afs_L1_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 300, : afs_L1_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 301, : apr_L1_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 302, : apr_L1_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 304, : aac_L2_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 305, : aac_L2_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 306, : amc_L2_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 307, : amc_L2_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 308, : aa_L2_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 309, : aa_L2_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 310, : afs_L2_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 311, : afs_L2_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 312, : apr_L2_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 313, : apr_L2_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 315, : aac_L3_con(i,1) = sum(ac1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 316, : aac_L3_unc(i,1) = sum(ac1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 317, : amc_L3_con(i,1) = sum(mc1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 318, : amc_L3_unc(i,1) = sum(mc1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 319, : aa_L3_con(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 320, : aa_L3_unc(i,1) = sum(alpha_int(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 321, : afs_L3_con(i,1) = sum(fs0(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 322, : afs_L3_unc(i,1) = sum(fs0(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));
- Line 323, : apr_L3_con(i,1) = sum(ps1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001))*(mw_vec(i,1)>=k(i,1))/sum(fs1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)<=min_z(i,1)+0.000001));
- Line 324, : apr_L3_unc(i,1) = sum(ps1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001))/sum(fs1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001).*Ls1(z_int(:,4*(i-1)+1)>min_z(i,1)+0.000001));

