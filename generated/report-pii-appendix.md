## Appendix: Detailed PII Detection Results

*Generated on 2026-09-14 17:05:34*

This appendix lists all detected instances of potential personally identifiable information (PII) in the project files. Each entry shows the matched PII terms and, for data files, sample values to help verify whether the flagged content is indeed sensitive.

### Data Files

**/replication-package/Replication Files/StataSas_CASD/data/public/nonproprietary/econ-gen-taux-inflation_csv/CUMUL.csv**

- Variable: `Taux d’inflation`
  - Matched terms: lat
  - Sample values: en %, Année, 2022

**/replication-package/Replication Files/StataSas_CASD/data/public/nonproprietary/econ-gen-taux-inflation_csv/Donn_es.csv**

- Variable: `Taux d’inflation`
  - Matched terms: lat
  - Sample values: en %, Année, 2022

**/replication-package/Replication Files/StataSas_CASD/data/public/original/econ-gen-taux-inflation.xlsx**

- Variable: `Taux d’inflation`
  - Matched terms: lat
  - Sample values: en %, Année, 2022

### Code Files

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 224: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 227: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 234: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 237: lat
  ```
  % calculate measure of firms M
  ```
- Line 239: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 242: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/AlphaFigures/ProfitMaximizationMW_GE.m**

- Line 8: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 52: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 93: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 95: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 98: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 131: loc, location
  ```
  legend('No MW','Baseline','+4% MW','+8% MW','+16% MW','+24% MW','location','southeast')
  ```
- Line 169: loc, location
  ```
  legend('No MW','Baseline','+4% MW','+8% MW','+16% MW','+24% MW','location','southeast')
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW.m**

- Line 6: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 108: loc, location
  ```
  plot(log(q),log(mc_vec(:,1)),'LineWidth',2,'Color','blue'),title('Marginal Cost without MW'),xlabel(
  ```
- Line 109: loc, location
  ```
  plot(log(q),log(mc_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Marginal Cost without MW'),xla
  ```
- Line 110: loc, location
  ```
  plot(log(q),log(mc_vec(:,3)),':','LineWidth',2,'Color','black'),title('Marginal Cost without MW'),xl
  ```
- Line 111: loc, location
  ```
  plot(log(q),log(mc_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Marginal Cost without MW'),x
  ```
- Line 121: loc, location
  ```
  plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost without MW'),xlabel('
  ```
- Line 122: loc, location
  ```
  plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost without MW'),xlab
  ```
- Line 123: loc, location
  ```
  plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost without MW'),xla
  ```
- Line 124: loc, location
  ```
  plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost without MW'),xl
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_A.m**

- Line 6: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 91: loc, location
  ```
  plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost without MW'),xlabel('
  ```
- Line 92: loc, location
  ```
  plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost without MW'),xlab
  ```
- Line 93: loc, location
  ```
  plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost without MW'),xla
  ```
- Line 94: loc, location
  ```
  plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost without MW'),xl
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_c.m**

- Line 6: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 92: loc, location
  ```
  plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost without MW'),xlabel('
  ```
- Line 93: loc, location
  ```
  plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost without MW'),xlab
  ```
- Line 94: loc, location
  ```
  plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost without MW'),xla
  ```
- Line 95: loc, location
  ```
  plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost without MW'),xl
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_h.m**

- Line 6: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 91: loc, location
  ```
  plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost without MW'),xlabel('
  ```
- Line 92: loc, location
  ```
  plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost without MW'),xlab
  ```
- Line 93: loc, location
  ```
  plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost without MW'),xla
  ```
- Line 94: loc, location
  ```
  plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost without MW'),xl
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_lambda.m**

- Line 6: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 91: loc, location
  ```
  plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost without MW'),xlabel('
  ```
- Line 92: loc, location
  ```
  plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost without MW'),xlab
  ```
- Line 93: loc, location
  ```
  plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost without MW'),xla
  ```
- Line 94: loc, location
  ```
  plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost without MW'),xl
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/CR-HFigures/CostMinimizationMW_mw.m**

- Line 6: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 90: loc, location
  ```
  plot(log(q),log(ac_vec(:,1)),'LineWidth',2,'Color','blue'),title('Average Cost with MW'),xlabel('log
  ```
- Line 91: loc, location
  ```
  plot(log(q),log(ac_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Average Cost with MW'),xlabel(
  ```
- Line 92: loc, location
  ```
  plot(log(q),log(ac_vec(:,3)),':','LineWidth',2,'Color','black'),title('Average Cost with MW'),xlabel
  ```
- Line 93: loc, location
  ```
  plot(log(q),log(ac_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Average Cost with MW'),xlabe
  ```
- Line 103: loc, location
  ```
  plot(log(q),log(mc_vec(:,1)),'LineWidth',2,'Color','blue'),title('Marginal Cost with MW'),xlabel('lo
  ```
- Line 104: loc, location
  ```
  plot(log(q),log(mc_vec(:,2)),'--','LineWidth',2,'Color','red'),title('Marginal Cost with MW'),xlabel
  ```
- Line 105: loc, location
  ```
  plot(log(q),log(mc_vec(:,3)),':','LineWidth',2,'Color','black'),title('Marginal Cost with MW'),xlabe
  ```
- Line 106: loc, location
  ```
  plot(log(q),log(mc_vec(:,4)),'-.','LineWidth',2,'Color','green'),title('Marginal Cost with MW'),xlab
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 19: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 34: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 120: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 124: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 296: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 298: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 305: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 308: lat
  ```
  % calculate measure of firms M
  ```
- Line 310: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 321: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 90: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 186: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 190: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 362: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 365: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 372: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 375: lat
  ```
  % calculate measure of firms M
  ```
- Line 377: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 391: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 427: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 428: name
  ```
  Table5 = table({'c';'h';'A';'f_E';'f';'mw/aw';'g_2';'g_3';'g_4'},[round([mod_par(1:3,1);mod_par(7:8,
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 226: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 229: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 236: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 239: lat
  ```
  % calculate measure of firms M
  ```
- Line 241: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 244: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/Decomposition/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 92: lat
  ```
  % calculate survivors, entrants and exiters compared to no-MW scenario
  ```
- Line 110: son
  ```
  % comparison of output per firm
  ```
- Line 118: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 127: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 213: loc, location
  ```
  % % explicit Olley-Pakes decomposition for reallocation effect (confirmed to
  ```
- Line 224: name
  ```
  rownames = {'Minimum Wage/k';'Change in firm size';'Change in firm size for survivors';'Change in fi
  ```
- Line 225: loc, location
  ```
  'Change in firm size for survivors (reallocation)';'Change in firm size for entrants';'Change in fir
  ```
- Line 227: loc, location
  ```
  'Change in output per firm for survivors (reallocation)';'Change in output per firm for entrants';'C
  ```
- Line 229: loc, location
  ```
  'Change in output per worker for survivors (reallocation)';'Change in output per worker for entrants
  ```
- Line 231: loc, location
  ```
  'Change in revenue per worker for survivors (reallocation)';'Change in revenue per worker for entran
  ```
- Line 234: loc, location
  ```
  'Change in Q-productivity for survivors (reallocation)';'Change in Q-productivity for entrants';'Cha
  ```
- Line 236: loc, location
  ```
  'Change in average profit for survivors (reallocation)';'Change in average profit for entrants';'Cha
  ```
- Line 237: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 244: name
  ```
  profit_c;profit_c_surv;profit_c_surv_change;profit_c_surv_reall;profit_c_ent;profit_c_ext],'Variable
  ```
- Line 248: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 249: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 251: name
  ```
  writetable(new_T,fullfile(OutputPath,'Figure7.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 224: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 227: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 234: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 237: lat
  ```
  % calculate measure of firms M
  ```
- Line 239: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 242: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 226: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 229: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 236: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 239: lat
  ```
  % calculate measure of firms M
  ```
- Line 241: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 244: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/A_Large/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/C_Small/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 120: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 129: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 135: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 141: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 328: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 331: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 335: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/H_Small/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output32/Scenarios/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/A_Large/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/C_Small/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 120: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 129: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 135: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 141: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 328: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 331: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 335: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/H_Small/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output64/Scenarios/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/A_Large/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/C_Small/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 120: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 129: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 135: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 141: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 328: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 331: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 335: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/H_Small/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 307: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Lambda_Large/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 56: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 119: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 128: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 134: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 140: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 327: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 330: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 334: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 251: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 258: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 261: lat
  ```
  % calculate measure of firms M
  ```
- Line 263: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 266: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 269: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 271: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 278: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 281: lat
  ```
  % calculate measure of firms M
  ```
- Line 283: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 294: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/MWResults_Technology_Output96/Scenarios/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Baseline Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 3: lat
  ```
  % generate the simulation results for different levels of the minimum wage
  ```
- Line 9: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 53: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 162: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 212: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 218: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 224: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 447: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 463: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 468: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 472: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 473: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 475: name
  ```
  writetable(new_T,fullfile(OutputPath,'Figure6.csv'),'WriteRowNames',true)
  ```
- Line 478: name
  ```
  varnames = {'LAMBDA','H','C','A','MW','Z0','WORKERS_MW','FIRMS_MW','L1_weird','FIRMS','K','ALPHA_BAR
  ```
- Line 481: name
  ```
  afs' apr' arev' aac' qcost' qprod' num_work_l0 av_z_l0 num_work_l1 av_z_l1 num_work_l2 av_z_l2 av_mz
  ```
- Line 485: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 496: lat, name
  ```
  rownames = {'Net wage k';'Minimum wage relative to k';'Minimum wage relative to mean';'Minimum wage 
  ```
- Line 499: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 501: name
  ```
  100*arev;100*qprod;alpha_bar'],'VariableNames',varnames,'RowNames',rownames);
  ```
- Line 502: name
  ```
  varnames2 = {'Baseline','No MW','4% higher','8% higher','16% higher','24% higher'};
  ```
- Line 503: name
  ```
  T = T(:, varnames2);
  ```
- Line 506: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 507: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 509: name
  ```
  writetable(new_T,fullfile(OutputPath,'Table6.csv'),'WriteRowNames',true)
  ```
- Line 511: name
  ```
  rownames = {'Avg wage - all firms';'Avg wage - 1-layer';'Avg wage - 2-layer';'Avg wage - 3-layer';'A
  ```
- Line 516: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 518: name
  ```
  100*av_mw_L3';nw_L1';nw_L2';nw_L3';afs;afs_L1';afs_L2';afs_L3';als_l0';als_l0_L1';als_l0_L2';als_l0_
  ```
- Line 519: name
  ```
  varnames2 = {'Baseline','No MW','4% higher','8% higher','16% higher','24% higher'};
  ```
- Line 520: name
  ```
  T = T(:, varnames2);
  ```
- Line 523: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 524: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 526: name
  ```
  writetable(new_T,fullfile(OutputPath,'TableF1.csv'),'WriteRowNames',true)
  ```
- Line 528: name
  ```
  rownames = {'Avg firm size';'Layer l0 (jobs)';'Avg # layers';'Avg wage in firms';'Avg wage at l0';'A
  ```
- Line 529: name
  ```
  varnames = {'Baseline';'-4%';'+4%';'Avg impact (rounded except layers)'}
  ```
- Line 535: name
  ```
  av_wage_l0(2,1) av_wage_l0(1,1) av_wage_l0(4,1) round(100*(av_wage_l0(4,1)-av_wage_l0(1,1))/(2*av_wa
  ```
- Line 538: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 539: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 541: name
  ```
  writetable(new_T,fullfile(OutputPath,'TableF2.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/R Figures A2-A3/Code/Graphs_Kaitz_v1.R**

- Line 10: social
  ```
  # https://www.strategie-plan.gouv.fr/publications/mission-bozio-wasmer-politiques-dexonerations-de-c
  ```
- Line 20: lname, name
  ```
  colnames(TAB) <- c("Year", "Belgium", "Germany", "Spain", "France", "UK", "Netherlands", "US")
  ```
- Line 22: lon
  ```
  TAB_long <- TAB %>%
  ```
- Line 23: country, lon, name
  ```
  pivot_longer(cols = -Year, names_to = "Country", values_to = "Value") %>%
  ```
- Line 24: country
  ```
  mutate(size = ifelse(Country == "France", 1.2, 0.6))
  ```
- Line 28: country, lon
  ```
  plot_KAITZ1 <- ggplot(TAB_long, aes(x = Year, y = Value, group = Country)) +
  ```
- Line 29: country
  ```
  geom_line(aes(color = Country, size = size)) +
  ```
- Line 57: lname, name
  ```
  colnames(TAB) <- c("Year", "Belgium", "Germany", "Spain", "France", "UK", "Netherlands", "US")
  ```
- Line 59: lon
  ```
  TAB_long <- TAB %>%
  ```
- Line 60: country, lon, name
  ```
  pivot_longer(cols = -Year, names_to = "Country", values_to = "Value") %>%
  ```
- Line 61: country
  ```
  mutate(size = ifelse(Country == "France", 1.2, 0.6))
  ```
- Line 65: country, lon
  ```
  plot_KAITZ2 <- ggplot(TAB_long, aes(x = Year, y = Value, group = Country)) +
  ```
- Line 66: country
  ```
  geom_line(aes(color = Country, size = size)) +
  ```

**/replication-package/Replication Files/MatlabR/R Figures A2-A3/Code/Graphs_UNCERTAINTY_Bloom_v1.R**

- Line 7: country
  ```
  # https://www.policyuncertainty.com/all_country_data.html
  ```
- Line 14: country
  ```
  TAB <- read.csv("R Figures A2-A3/Data/epu_all_country_2025-03-25.csv")
  ```
- Line 19: lon
  ```
  pivot_longer(cols = c("France", "Germany", "US", "UK", "Spain", "Italy"),
  ```
- Line 20: country, name
  ```
  names_to = "Country", values_to = "Value") %>%
  ```
- Line 27: country, son
  ```
  facet_wrap(~Country) +  # chaque graphique a son axe Y propre
  ```
- Line 28: country, son
  ```
  #  facet_wrap(~Country, scales = "free_y") +  # chaque graphique a son axe Y propre
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_6_legFigG1.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp"
  ```
- Line 14: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 31: loc
  ```
  "Agents allocated to production \n(workers + managers)",
  ```
- Line 45: lon
  ```
  pivot_longer(
  ```
- Line 47: name
  ```
  names_to = "Scenario",
  ```
- Line 51: name
  ```
  names_from = Row,
  ```
- Line 54: name
  ```
  rename(
  ```
- Line 97: lon
  ```
  pivot_longer(
  ```
- Line 99: name
  ```
  names_to = "Indicators",
  ```
- Line 119: coord
  ```
  coord_cartesian(xlim = c(1, max_x), ylim = c(0.75, 1.25)) +
  ```
- Line 121: name
  ```
  scale_colour_manual(values = cols, labels = leg, name = "") +
  ```
- Line 122: name
  ```
  scale_linetype_discrete(labels = leg, name = "") +
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_7.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp", "sjmisc"
  ```
- Line 14: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 19: loc, location
  ```
  "Contrib. reallocation across survivors",
  ```
- Line 30: loc, location
  ```
  "survivors (reallocation)",
  ```
- Line 37: name
  ```
  rename(MW_K = `Minimum Wage/k`) %>%
  ```
- Line 38: lon
  ```
  pivot_longer(
  ```
- Line 40: name
  ```
  names_to = "Indicators",
  ```
- Line 59: coord
  ```
  coord_cartesian(xlim = c(1, max_x)) +
  ```
- Line 61: name
  ```
  scale_colour_manual(values = cols, labels = leg, name = "") +
  ```
- Line 62: name
  ```
  scale_linetype_manual(values = types, labels = leg, name = "") +
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_8.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp", "sjmisc"
  ```
- Line 14: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 34: lat
  ```
  Simulation = sprintf(
  ```
- Line 63: lat
  ```
  Simulation = factor(
  ```
- Line 64: lat
  ```
  Simulation,
  ```
- Line 66: lat
  ```
  lev <- unique(Simulation)
  ```
- Line 72: lat
  ```
  TAB %>% count(Simulation)
  ```
- Line 73: lat
  ```
  #simulation_levels <- TAB %>%  distinct(Simulation) %>%  pull(Simulation) %>%  { c(baseline_sim, set
  ```
- Line 74: lat
  ```
  #simulation_levels
  ```
- Line 87: lat
  ```
  labels <- levels(data$Simulation)
  ```
- Line 93: lat
  ```
  latex2exp::TeX
  ```
- Line 97: lat
  ```
  simulation_levels <- data %>%  distinct(Simulation) %>%  pull(Simulation) %>%  { c(baseline_sim, set
  ```
- Line 100: lat
  ```
  filter(!is.na(Simulation)) %>%
  ```
- Line 101: lat
  ```
  ggplot(aes(x = MW_3, y = .data[[y_dep]], color = Simulation)) +
  ```
- Line 102: lat
  ```
  geom_line(aes(linetype = Simulation), linewidth = 1.1) +
  ```
- Line 110: coord
  ```
  coord_cartesian(xlim = c(1, max_x), ylim = y_lim) +
  ```
- Line 118: lat
  ```
  breaks = simulation_levels,
  ```
- Line 123: lat
  ```
  breaks = simulation_levels,
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_F2.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp", "sjmisc"
  ```
- Line 14: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 35: lat
  ```
  Simulation = sprintf(
  ```
- Line 45: lat
  ```
  Simulation = factor(
  ```
- Line 46: lat
  ```
  Simulation,
  ```
- Line 48: lat
  ```
  lev <- unique(Simulation)
  ```
- Line 64: lat
  ```
  simulation_levels <- levels(data$Simulation)
  ```
- Line 67: lat
  ```
  labels <- simulation_levels
  ```
- Line 73: lat
  ```
  latex2exp::TeX
  ```
- Line 78: lat
  ```
  filter(!is.na(Simulation)) %>%
  ```
- Line 79: lat
  ```
  ggplot(aes(x = MW_3, y = .data[[y_dep]], color = Simulation)) +
  ```
- Line 80: lat
  ```
  geom_line(aes(linetype = Simulation), linewidth = 1.1) +
  ```
- Line 88: coord
  ```
  coord_cartesian(xlim = c(1, max_x), ylim = y_lim) +
  ```
- Line 96: lat
  ```
  breaks = simulation_levels,
  ```
- Line 101: lat
  ```
  breaks = simulation_levels,
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_G1.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp"
  ```
- Line 14: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 34: lon
  ```
  pivot_longer(
  ```
- Line 36: name
  ```
  names_to = "Scenario",
  ```
- Line 40: name
  ```
  names_from = Row,
  ```
- Line 43: name
  ```
  rename(
  ```
- Line 86: lon
  ```
  pivot_longer(
  ```
- Line 88: name
  ```
  names_to = "Indicators",
  ```
- Line 102: coord
  ```
  coord_cartesian(xlim = c(1, max_x), ylim = c(0.75, 1.25)) +
  ```
- Line 142: name
  ```
  filename = file.path(graph_dir, output),
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Figure_I1.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp"
  ```
- Line 13: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 29: loc
  ```
  "Agents allocated to production \n(workers + managers)",
  ```
- Line 36: lon
  ```
  types_light <- c("solid", "dashed", "dashed", "dotted", "dotdash", "longdash")
  ```
- Line 45: name
  ```
  rename(`no binding` = `2% lower`) %>%
  ```
- Line 46: lon, name
  ```
  pivot_longer(-Row, names_to = "Scenario", values_to = "Value") %>%
  ```
- Line 47: name
  ```
  pivot_wider(names_from = Row, values_from = Value) %>%
  ```
- Line 51: lon, name
  ```
  pivot_longer(-Row, names_to = "Scenario", values_to = "Value") %>%
  ```
- Line 52: name
  ```
  pivot_wider(names_from = Row, values_from = Value) %>%
  ```
- Line 58: lon, name
  ```
  pivot_longer(-Row, names_to = "Scenario", values_to = "Value") %>%
  ```
- Line 59: name
  ```
  pivot_wider(names_from = Row, values_from = Value)
  ```
- Line 63: name
  ```
  rename(
  ```
- Line 78: name
  ```
  rename(
  ```
- Line 112: lon
  ```
  pivot_longer(
  ```
- Line 114: name
  ```
  names_to = "Indicators",
  ```
- Line 128: coord
  ```
  coord_cartesian(xlim = c(1, 1.24), ylim = c(0.9, 1.1)) +
  ```
- Line 130: name
  ```
  scale_colour_manual(values = cols_light, name = "", labels = leg_light) +
  ```
- Line 131: name
  ```
  scale_linetype_manual(values = types_light, name = "", labels = leg_light) +
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/Main.R**

- Line 6: lat
  ```
  source("R Simulation Figures/Code/Figure_6_legFigG1.R")
  ```
- Line 8: lat
  ```
  source("R Simulation Figures/Code/Figure_7.R")
  ```
- Line 10: lat
  ```
  source("R Simulation Figures/Code/Figure_8.R")
  ```
- Line 12: lat
  ```
  source("R Simulation Figures/Code/Figure_F2.R")
  ```
- Line 14: lat
  ```
  source("R Simulation Figures/Code/Figure_G1.R")
  ```
- Line 16: lat
  ```
  source("R Simulation Figures/Code/TableH2.R")
  ```
- Line 18: lat
  ```
  source("R Simulation Figures/Code/Figure_I1.R")
  ```

**/replication-package/Replication Files/MatlabR/R Simulation Figures/Code/TableH2.R**

- Line 1: name
  ```
  rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))
  ```
- Line 5: lat
  ```
  "cowplot", "plotly", "latex2exp"
  ```
- Line 14: lat
  ```
  graph_dir <- "R Simulation Figures/Output"
  ```
- Line 32: loc
  ```
  "Agents allocated to production \n(workers + managers)",
  ```
- Line 47: lon
  ```
  pivot_longer(
  ```
- Line 49: name
  ```
  names_to = "Scenario",
  ```
- Line 53: name
  ```
  names_from = Row,
  ```
- Line 56: name
  ```
  rename(
  ```
- Line 102: lon
  ```
  pivot_longer(
  ```
- Line 104: name
  ```
  names_to = "Indicators",
  ```
- Line 124: coord
  ```
  coord_cartesian(xlim = c(1, max_x), ylim = c(0.75, 1.25)) +
  ```
- Line 127: name
  ```
  scale_colour_manual(values = cols_unemp, labels = leg_unemp, name = "") +
  ```
- Line 128: name
  ```
  scale_linetype_discrete(labels = leg_unemp, name = "") +
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 17: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 32: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 117: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 121: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 289: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 291: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 298: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 301: lat
  ```
  % calculate measure of firms M
  ```
- Line 303: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 314: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 90: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 186: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 190: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 358: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 361: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 368: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 371: lat
  ```
  % calculate measure of firms M
  ```
- Line 373: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 387: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 421: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 424: name
  ```
  [round(tm(1:4,2),3);round(tm(5:7,2),2);round(100*tm(8,2),2);round(tm(9,2),3)],'VariableNames',varnam
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (i) - 1+ Only/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 210: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 216: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 222: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 445: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 461: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 466: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 470: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 471: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 473: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_A.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 17: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 32: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 117: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 121: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 289: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 291: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 298: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 301: lat
  ```
  % calculate measure of firms M
  ```
- Line 303: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 314: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 90: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 186: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 190: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 358: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 361: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 368: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 371: lat
  ```
  % calculate measure of firms M
  ```
- Line 373: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 387: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 421: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 424: name
  ```
  [round(tm(1:4,2),3);round(tm(5:7,2),2);round(100*tm(8,2),2);round(tm(9,2),3)],'VariableNames',varnam
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 210: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 216: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 222: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 445: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 461: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 466: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 470: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 471: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 473: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_B.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 17: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 32: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 117: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 121: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 289: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 291: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 298: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 301: lat
  ```
  % calculate measure of firms M
  ```
- Line 303: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 314: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 92: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 188: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 192: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 360: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 363: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 370: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 373: lat
  ```
  % calculate measure of firms M
  ```
- Line 375: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 389: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 424: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 427: name
  ```
  [round(tm(1:2,2),3);round(tm(10,2),3);round(tm(3:4,2),3);round(tm(5:7,2),2);round(100*tm(8,2),2);rou
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 211: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 217: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 223: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 454: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 470: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 475: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 479: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 480: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 482: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_C.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 17: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 32: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 117: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 121: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 289: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 291: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 298: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 301: lat
  ```
  % calculate measure of firms M
  ```
- Line 303: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 314: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 92: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 188: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 192: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 360: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 363: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 370: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 373: lat
  ```
  % calculate measure of firms M
  ```
- Line 375: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 389: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 424: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 427: name
  ```
  [round(tm(1:2,2),3);round(tm(10,2),3);round(tm(3:4,2),3);round(tm(5:7,2),2);round(100*tm(8,2),2);rou
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 220: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 223: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 230: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 233: lat
  ```
  % calculate measure of firms M
  ```
- Line 235: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 238: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 211: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 217: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 223: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 454: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 470: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 475: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 479: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 480: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 482: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_D.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 19: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 34: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 120: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 124: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 296: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 298: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 305: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 308: lat
  ```
  % calculate measure of firms M
  ```
- Line 310: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 321: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 90: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 186: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 190: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 362: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 365: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 372: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 375: lat
  ```
  % calculate measure of firms M
  ```
- Line 377: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 391: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 425: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 428: name
  ```
  [round(tm(1:4,2),3);round(tm(5:7,2),2);round(100*tm(8,2),2);round(tm(9,2),3)],'VariableNames',varnam
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 224: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 227: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 234: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 237: lat
  ```
  % calculate measure of firms M
  ```
- Line 239: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 242: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 226: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 229: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 236: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 239: lat
  ```
  % calculate measure of firms M
  ```
- Line 241: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 244: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 210: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 216: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 222: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 445: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 461: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 466: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 470: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 471: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 473: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_E.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 19: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 34: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 120: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 124: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 296: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 298: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 305: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 308: lat
  ```
  % calculate measure of firms M
  ```
- Line 310: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 321: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 90: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 186: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 190: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 362: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 365: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 372: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 375: lat
  ```
  % calculate measure of firms M
  ```
- Line 377: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 391: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 422: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 426: name
  ```
  [round(tm(1:4,2),3);round(tm(5:7,2),2);round(tm(8:9,2),3)],'VariableNames',varnames)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 224: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 227: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 234: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 237: lat
  ```
  % calculate measure of firms M
  ```
- Line 239: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 242: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 226: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 229: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 236: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 239: lat
  ```
  % calculate measure of firms M
  ```
- Line 241: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 244: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 210: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 216: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 222: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 445: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 461: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 466: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 470: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 471: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 473: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_F.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 19: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 34: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 120: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 124: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 296: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 298: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 305: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 308: lat
  ```
  % calculate measure of firms M
  ```
- Line 310: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 321: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 21: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 90: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 186: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 190: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 362: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 365: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 372: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 375: lat
  ```
  % calculate measure of firms M
  ```
- Line 377: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 391: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 422: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 426: name
  ```
  [round(tm(1:4,2),3);round(tm(5:7,2),2);round(tm(8:9,2),3)],'VariableNames',varnames)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 224: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 227: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 234: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 237: lat
  ```
  % calculate measure of firms M
  ```
- Line 239: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 242: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 226: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 229: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 236: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 239: lat
  ```
  % calculate measure of firms M
  ```
- Line 241: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 244: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 257: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 260: lat
  ```
  % calculate measure of firms M
  ```
- Line 262: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 273: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 286: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 51: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 160: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 210: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 216: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 222: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 445: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Average wage in l=0';'Average wage in l=1';'Aver
  ```
- Line 461: name
  ```
  varnames = {'No MW','Baseline','2% higher','4% higher','6% higher','8% higher','12% higher','16% hig
  ```
- Line 466: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 470: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 471: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 473: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureG1_G.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 20: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 35: son
  ```
  % check reasonable values for certain parameters
  ```
- Line 121: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 125: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 297: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 299: lat
  ```
  % calculate unemployment rate
  ```
- Line 301: lat
  ```
  % calculate negative "profit" for workers due to risk of unemployment
  ```
- Line 303: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 310: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 313: lat
  ```
  % calculate measure of firms M
  ```
- Line 315: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 326: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/Calibration.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 23: loc, location
  ```
  % mu = minimum value of alpha (GPD location parameter)
  ```
- Line 98: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 194: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 198: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 370: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 373: lat
  ```
  % calculate unemployment rate
  ```
- Line 375: lat
  ```
  % calculate negative "profit" for workers due to risk of unemployment
  ```
- Line 377: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 384: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 387: lat
  ```
  % calculate measure of firms M
  ```
- Line 389: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 403: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 439: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 442: name
  ```
  [round(tm(1:4,1),3);round(tm(5:7,1),2);round(100*tm(8,1),2);round(tm(9:10,1),3)],[round(tm(1:4,2),3)
  ```

**/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/FreeEntrySolve_MW.m**

- Line 48: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 52: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 224: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 227: lat
  ```
  % calculate unemployment rate
  ```
- Line 229: lat
  ```
  % calculate negative "profit" for workers due to risk of unemployment
  ```
- Line 231: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 238: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 241: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 244: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 50: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 54: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 226: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 229: lat
  ```
  % calculate unemployment rate
  ```
- Line 231: lat
  ```
  % calculate negative "profit" for workers due to risk of unemployment
  ```
- Line 233: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 240: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 243: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 246: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```

**/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/PMMW_GE.m**

- Line 68: lat
  ```
  % values of q and z to try, so the solution is calculated
  ```
- Line 72: lat
  ```
  % for optimal z for a given q, and then calculates FOC with
  ```
- Line 248: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 250: lat
  ```
  % calculate unemployment rate
  ```
- Line 252: lat
  ```
  % calculate negative "profit" for workers due to risk of unemployment
  ```
- Line 254: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 261: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 264: lat
  ```
  % calculate measure of firms M
  ```
- Line 266: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 277: lat
  ```
  % calculate firm layer distribution (percentage of active firms of each L)
  ```
- Line 290: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Unemployment Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 54: lat
  ```
  % interpolation grid for alpha (the program solves the profit maximization
  ```
- Line 110: son
  ```
  % comparison of layer percentages among continuing firms
  ```
- Line 160: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 166: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 172: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 383: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Minimum wage as fraction of average';'Minimum wa
  ```
- Line 396: name
  ```
  varnames = {'No MW','Baseline','4% higher','8% higher','16% higher','24% higher'};
  ```
- Line 400: name
  ```
  aac_L3_con';aac_L3_unc';amc_L3_con';amc_L3_unc';aa_L3_con';aa_L3_unc';afs_L3_con';afs_L3_unc';apr_L3
  ```
- Line 404: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 405: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 407: name
  ```
  writetable(new_T,fullfile(OutputPath,'TableH2_Figure.csv'),'WriteRowNames',true)
  ```
- Line 410: lat, name
  ```
  rownames = {'Minimum wage relative to k';'Net wage k';'Average wage';'Share of firms bound';'Share o
  ```
- Line 412: name
  ```
  varnames = {'No MW','Baseline','4% higher','8% higher','16% higher','24% higher'};
  ```
- Line 413: name
  ```
  T = array2table([mw_vec'./k';100*k';av_wage';pct_bnd_firm';pct_bnd_work';num_fcwork';num_workers';M'
  ```
- Line 414: name
  ```
  varnames2 = {'Baseline','No MW','4% higher','8% higher','16% higher','24% higher'};
  ```
- Line 415: name
  ```
  T = T(:, varnames2);
  ```
- Line 418: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 419: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 421: name
  ```
  writetable(new_T,fullfile(OutputPath,'TableH2.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/Cal_Iter.m**

- Line 3: lat
  ```
  % calibration targets, calculating the sum of squared percentage deviations
  ```
- Line 53: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 55: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 64: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 67: lat
  ```
  % calculate measure of firms M
  ```
- Line 69: lat
  ```
  % calculate net expected profit for a potential entrant
  ```

**/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/Calibration.m**

- Line 8: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 99: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 101: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 110: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 113: lat
  ```
  % calculate measure of firms M
  ```
- Line 115: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 140: name
  ```
  varnames = {'Parameters','Values','Targets','Data','Model'}
  ```
- Line 142: name
  ```
  [round(tm(1:2,1),3);round(tm(3,1),2);round(100*tm(4,1),2);round(tm(6,1),3);round(tm(5,1),3)],[round(
  ```

**/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/FreeEntrySolve_MW.m**

- Line 17: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 19: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 28: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 31: lat
  ```
  % calculate measure of firms M
  ```
- Line 33: lat
  ```
  % calculate net expected profit for a potential entrant
  ```

**/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/FreeEntrySolve_MW.m**

- Line 17: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 19: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 28: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 31: lat
  ```
  % calculate measure of firms M
  ```
- Line 33: lat
  ```
  % calculate net expected profit for a potential entrant
  ```

**/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/PMMW_GE.m**

- Line 30: lat
  ```
  % calculate total mass of workers at each firm
  ```
- Line 32: lat
  ```
  % calculate zero-profit cutoff for alpha
  ```
- Line 41: lat
  ```
  % calculate adjusted probability distribution for firms that actually
  ```
- Line 44: lat
  ```
  % calculate measure of firms M
  ```
- Line 46: lat
  ```
  % calculate net expected profit for a potential entrant
  ```
- Line 57: loc
  ```
  % workers allocated to fixed costs
  ```

**/replication-package/Replication Files/MatlabR/Unproductive Managers Specification/Code/MWResults/ProfitMaximizationMW_GE.m**

- Line 7: city
  ```
  % sigma (elasticity of substitution in utility) = 3.8 (literature)
  ```
- Line 66: son
  ```
  % comparison of productivity (output per worker)
  ```
- Line 72: son
  ```
  % comparison in productivity measured by revenue per worker
  ```
- Line 78: son
  ```
  % comparison in productivity measured by average cost
  ```
- Line 96: name
  ```
  rownames = {'Value of minimum wage';'Average wage';'Minimum value of z^0_L';'# Firms (& entrepreneur
  ```
- Line 100: name
  ```
  varnames = {'2% lower','1% lower','Baseline','0.25% higher','0.5% higher','0.75% higher','1% higher'
  ```
- Line 102: name
  ```
  qcost;qprod;phi_int'],'VariableNames',varnames,'RowNames',rownames);
  ```
- Line 106: name
  ```
  new_T.Properties.VariableNames = T.Properties.VariableNames;
  ```
- Line 107: name
  ```
  new_T.Properties.RowNames = T.Properties.RowNames;
  ```
- Line 109: name
  ```
  writetable(new_T,fullfile(OutputPath,'FigureI1.csv'),'WriteRowNames',true)
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Manual_mode_SAS_v1.sas**

- Line 3: block, loc
  ```
  /* COMMAND BLOCK TO RESUBMIT IF SAS IS CLOSED */
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Manual_mode_STATA_v1.do**

- Line 6: block, loc
  ```
  * COMMAND BLOCK TO RESUBMIT IF STATA IS CLOSED
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/01_build_rtt_gmr_assignments.sas**

- Line 26: social
  ```
  %mw_find_subdir(parent=&casd_data_root, contains=COTISATIONS SOCIALES, contains2=_2000, out=_mw_rtt_
  ```
- Line 27: name
  ```
  libname rtt  "&casd_data_root\&_mw_rtt_dir";
  ```
- Line 28: name
  ```
  libname out2 "&root\output\generated\Output_data\For_1_SAS_DADS\GMR";
  ```
- Line 154: name
  ```
  rename annee_aide = annee_rtt mois_aide = mois_rtt;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/02_extract_dads_jobs.sas**

- Line 25: name
  ```
  libname out1 "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
  ```
- Line 26: name
  ```
  libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
  ```
- Line 30: name
  ```
  %macro libnames_list;
  ```
- Line 32: name
  ```
  libname REG&annee. "&casd_data_root\DADS_DADS Postes_&annee.";
  ```
- Line 35: name
  ```
  %libnames_list;
  ```
- Line 53: lat
  ```
  produced before the job-level file is narrowed to variables used later. */
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/03_build_minimum_wage_simulation_inputs.sas**

- Line 2: lat
  ```
  File:    03_build_minimum_wage_simulation_inputs.sas
  ```
- Line 3: lat
  ```
  Purpose: Reconstruct historical RTT aid characteristics and build annual inputs used for minimum-wag
  ```
- Line 25: name
  ```
  libname in1  "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
  ```
- Line 26: name
  ```
  libname in2  "&root\output\generated\Output_data\For_1_SAS_DADS\GMR";
  ```
- Line 27: name
  ```
  libname out1 "&root\output\generated\Output_data\For_1_SAS_DADS\SIMUL";
  ```
- Line 143: lat
  ```
  /* GMR/date information is constant across simulation years. Merge it with the
  ```
- Line 156: name
  ```
  /* Build one compact SIMUL_MW file per year. AN is implied by the member name
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/1_SAS_DADS/MACROS/macros_dads_job_extraction.sas**

- Line 17: lon
  ```
  downstream organization programs. REGT is retained only long enough to apply
  ```
- Line 22: name
  ```
  rename =
  ```
- Line 31: name
  ```
  %if %eval(&annee.) < 2008 %then %do; nes16 rename = (nes16 = a17) %end;
  ```
- Line 117: name
  ```
  output out=eqtp&annee.(rename=(nbheur=nbheur_med)) median=;
  ```
- Line 128: name
  ```
  output out=eqtp&annee.(rename=(nbheur=nbheur_medCS)) median=;
  ```
- Line 180: name
  ```
  output out=_rtt_stats(drop=_type_ _freq_ rename=(e_eqtp=sum_e_eqtp)) sum=;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/01_extract_ficus_accounts.sas**

- Line 25: name
  ```
  /* Resolve FICUS paths without hard-coding apostrophes or accented names. */
  ```
- Line 35: loc
  ```
  %local an;
  ```
- Line 39: loc
  ```
  /* Locate the annual FICUS directory. */
  ```
- Line 48: loc
  ```
  /* Locate "Fichiers en euros" below it. */
  ```
- Line 56: name
  ```
  libname fic&an. "%superq(_mw_fic_path)";
  ```
- Line 71: loc
  ```
  %local an;
  ```
- Line 91: name
  ```
  libname fic&an. "%superq(_mw_fic_path)";
  ```
- Line 106: loc
  ```
  %local an;
  ```
- Line 132: name
  ```
  libname ficA&an. "%superq(_mw_ficA_path)";
  ```
- Line 133: name
  ```
  libname ficB&an. "%superq(_mw_ficB_path)";
  ```
- Line 168: name
  ```
  libname ficA2007 "%superq(_mw_ficA_2007_path)";
  ```
- Line 169: name
  ```
  libname ficB2007 "%superq(_mw_ficB_2007_path)";
  ```
- Line 181: name
  ```
  rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
  ```
- Line 222: name
  ```
  rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
  ```
- Line 228: name
  ```
  rename sirpro=siren;
  ```
- Line 240: name
  ```
  rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
  ```
- Line 256: name
  ```
  rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
  ```
- Line 262: name
  ```
  rename sirpro=siren;
  ```
- Line 270: name
  ```
  rename cj=stat_cj ACHAMAR=achat_mar ACHAMPR=achat_mp AUTACHA=achat_serv saltrai=saltrait;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/02_extract_training_2483.sas**

- Line 28: name
  ```
  libname FP&an "&casd_data_root\&_mw_fp_dir";
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/03_extract_dads_1993_calibration.sas**

- Line 24: name
  ```
  libname dads93  "&casd_data_root\DADS_DADS Entreprises_1993"; run;
  ```
- Line 26: name
  ```
  rename nbsal = nbsal_93;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/2_SAS_OTHER/04_extract_industry_nomenclatures.sas**

- Line 2: lat
  ```
  File:    04_extract_industry_nomenclatures.sas
  ```
- Line 30: loc
  ```
  %local an;
  ```
- Line 52: name
  ```
  libname fic&an. "%superq(_mw_nom_fic_path)";
  ```
- Line 72: name
  ```
  libname brn2008 "&casd_data_root\DECFISCPRO_BIC-RN_2008"; run;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/3_STATA_PREPROCESSING_ORGA/01_prepare_training_2483.do**

- Line 21: lat
  ```
  * transformations, avoiding repeated rewrites of a growing cumulative stack.
  ```
- Line 24: name
  ```
  rename siren siren2
  ```
- Line 73: name
  ```
  rename F12A d_fp_e
  ```
- Line 74: name
  ```
  rename F12B d_fp_i
  ```
- Line 99: name
  ```
  rename F12A d_fp_e
  ```
- Line 100: name
  ```
  rename F12B d_fp_i
  ```
- Line 122: block, lat, loc
  ```
  * The historical cumulative append order after the 2007 block was
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/3_STATA_PREPROCESSING_ORGA/02_prepare_national_accounts_deflators.do**

- Line 1: lat
  ```
  * File:    02_prepare_national_accounts_deflators.do
  ```
- Line 2: lat
  ```
  * Purpose: Prepare the national-accounts deflators and industry mappings used by the TFP routine.
  ```
- Line 10: lon
  ```
  tempfile map_a38 prod_ids prod_long cap_map cap_ids cap_long classif bridge02
  ```
- Line 12: lat
  ```
  * Output-price deflators.
  ```
- Line 16: name
  ```
  rename DIV_A88 NIV2
  ```
- Line 38: loc
  ```
  local yyyy = 1945 + `x'
  ```
- Line 40: name
  ```
  rename v`x' pyyyy_p2014_`yyyy'
  ```
- Line 48: lon
  ```
  reshape long pyyyy_p2014_, i(NIV2 operation) j(year)
  ```
- Line 49: name
  ```
  rename pyyyy_p2014 pyyyy_p2014
  ```
- Line 53: lon
  ```
  save `prod_long', replace
  ```
- Line 57: name
  ```
  rename pyyyy_p2014 p2010_p2014
  ```
- Line 67: lat
  ```
  * Capital-price deflators.
  ```
- Line 71: name
  ```
  rename DIV_A88 NIV2
  ```
- Line 72: name
  ```
  rename DIV_A38 INDUSTRY
  ```
- Line 91: loc
  ```
  local yyyy = 1974 + `x'
  ```
- Line 93: name
  ```
  rename v`x' year`yyyy'_P
  ```
- Line 105: loc
  ```
  local yyyy = 1974 + `x'
  ```
- Line 109: lon
  ```
  reshape long pyyyy_p2014_, i(NIV2) j(year)
  ```
- Line 110: name
  ```
  rename pyyyy_p2014 pyyyy_p2014
  ```
- Line 112: lon
  ```
  save `cap_long', replace
  ```
- Line 116: name
  ```
  rename pyyyy_p2014 p2010_p2014
  ```
- Line 127: name
  ```
  rename APENREV1 apenrev1
  ```
- Line 128: name
  ```
  rename APENREV2 apenrev2
  ```
- Line 140: name
  ```
  rename SIREN siren
  ```
- Line 141: name
  ```
  rename APE ape
  ```
- Line 147: name
  ```
  rename SIREN siren
  ```
- Line 148: name
  ```
  rename APE ape
  ```
- Line 150: name
  ```
  rename ape apenrev1
  ```
- Line 170: name
  ```
  rename APE ape
  ```
- Line 171: name
  ```
  rename N114 n114
  ```
- Line 177: name
  ```
  rename n114 N114
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/3_STATA_PREPROCESSING_ORGA/04_build_policy_parameter_grid.do**

- Line 2: lat
  ```
  * Purpose: Build the finite grid of policy and firm characteristics used for simulated statutory lab
  ```
- Line 12: lat
  ```
  * with firm characteristics is relationally identical but avoids materializing
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_calibration_moments.sas**

- Line 105: name
  ```
  rename apet  = apet_acc;
  ```
- Line 106: name
  ```
  rename siret = siret_acc;
  ```
- Line 289: name
  ```
  rename codgeo = comt;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_firm_history.sas**

- Line 74: name
  ```
  rename siren2 = siren;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_firm_info_by_year.sas**

- Line 12: lat
  ```
  /* Build the same worker population as the submitted program. */
  ```
- Line 85: lat
  ```
  /* Commuting-zone mapping on the same worker population. */
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_firm_organization_data.sas**

- Line 24: name
  ```
  rename=(siren=_siren_input)
  ```
- Line 63: lat
  ```
  /* Submitted exclusion counts: same population, same SIREN order, same SUM statistic. */
  ```
- Line 85: name
  ```
  rename apet=apet_acc siret=siret_acc;
  ```
- Line 174: name
  ```
  rename=(totpostescs1=totpostescs12 tothrscs1=tothrscs12 totssupbrutcs1=totssupbrutcs12))
  ```
- Line 176: name
  ```
  rename=(totpostescs1=totpostescs13 tothrscs1=tothrscs13 totssupbrutcs1=totssupbrutcs13))
  ```
- Line 178: name
  ```
  rename=(totpostescs1=totpostescs14 tothrscs1=tothrscs14 totssupbrutcs1=totssupbrutcs14))
  ```
- Line 180: name
  ```
  rename=(totpostescs1=totpostescs15 tothrscs1=tothrscs15 totssupbrutcs1=totssupbrutcs15))
  ```
- Line 205: lat
  ```
  /* Modal APET and ZE1990 on the same filtered population used by the old helper. */
  ```
- Line 228: lat
  ```
  /* Remove inherited labels/formats so the Stata export is stable across SAS installations. */
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_firm_rtt_history.sas**

- Line 3: lat
  ```
  Purpose: Merge working-time-reduction histories with simulated labor costs and firm characteristics.
  ```
- Line 42: name
  ```
  rename apet2 = apet;
  ```
- Line 78: lat
  ```
  /* Preserve the submitted sort order used for deterministic tie breaking, while omitting the diagnos
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_simulated_firm_info.sas**

- Line 2: lat
  ```
  File:    macro_build_simulated_firm_info.sas
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_build_worker_level_data.sas**

- Line 38: name
  ```
  rename apet  = apet_acc;
  ```
- Line 39: name
  ```
  rename siret = siret_acc;
  ```
- Line 94: name
  ```
  rename codgeo = comt;
  ```
- Line 96: url
  ```
  /* From this point Figure 2 needs only firm id, occupation, and hourly total labor cost. */
  ```
- Line 174: url
  ```
  /* The Figure 2 program consumes only firm id, hourly labor cost, and hierarchy assignments. */
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/4_SAS_ORGANIZATIONS/MACROS/macro_compute_labor_costs.sas**

- Line 3: lat
  ```
  Purpose: Define payroll-tax and relief-scheme calculations used to reconstruct total labor costs.
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_apply_analysis_sample_filters.do**

- Line 13: name
  ```
  syntax varname, Generate(name) [FILL1995]
  ```
- Line 77: loc
  ```
  local listv = "totpostes totssupbrut tothrs"
  ```
- Line 78: loc
  ```
  foreach zz of local listv{
  ```
- Line 88: loc
  ```
  local listv = "totpostes totssupbrut tothrs"
  ```
- Line 89: loc
  ```
  foreach zz of local listv{
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_assemble_annual_firm_panel.do**

- Line 12: loc
  ```
  local keep_intermediate "$keep_intermediate"
  ```
- Line 14: loc
  ```
  local keep_intermediate : environment KEEP_INTERMEDIATE
  ```
- Line 18: loc
  ```
  local keep_intermediate "0"
  ```
- Line 30: name
  ```
  rename `var' `=lower("`var'")'
  ```
- Line 47: lat
  ```
  * Years outside 2000-2006 have no later consumer in Table B1.
  ```
- Line 80: name
  ```
  rename `var' `=lower("`var'")'
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_compute_calibration_moments.do**

- Line 12: name
  ```
  rename `var' `=lower("`var'")'
  ```
- Line 121: name
  ```
  rename `var' `=lower("`var'")'
  ```
- Line 129: loc
  ```
  local list1 "postes_smicpb postes_smic05l postes_smic06 postes_smic07 postes_smic08 postes_smic09 po
  ```
- Line 130: loc
  ```
  foreach v of local list1 {
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/5_STATA_FINAL_DATA_CONSTRUCTION/functions/fn_estimate_tfp.do**

- Line 43: loc
  ```
  local missing_duration = r(mean)
  ```
- Line 83: name
  ```
  rename year year_CAP
  ```
- Line 84: name
  ```
  rename pyyyy_p2010 pyyyy_p2010_CAP
  ```
- Line 137: loc
  ```
  local nb_sector = r(max)
  ```
- Line 159: lname, name
  ```
  matrix colnames TFP_H = SECTOR bH_m bH_k bH_l
  ```
- Line 160: lname, name
  ```
  matrix colnames TFP_W = SECTOR bW_m bW_k bW_l
  ```
- Line 163: name
  ```
  svmat TFP_H, names(matcol)
  ```
- Line 164: name
  ```
  rename TFP_H* *
  ```
- Line 169: name
  ```
  svmat TFP_W, names(matcol)
  ```
- Line 170: name
  ```
  rename TFP_W* *
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/00_run_regression_analysis.do**

- Line 59: loc
  ```
  local keep_intermediate "$keep_intermediate"
  ```
- Line 61: loc
  ```
  local keep_intermediate : environment KEEP_INTERMEDIATE
  ```
- Line 63: loc
  ```
  if "`keep_intermediate'" == "" local keep_intermediate "0"
  ```
- Line 66: lat
  ```
  capture erase "$root\output\generated\Output_reg\`d'\_latex_results.dta"
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/01_build_descriptive_tables.do**

- Line 10: loc
  ```
  local shared_tfp_base = 0
  ```
- Line 15: loc
  ```
  local shared_tfp_base = 1
  ```
- Line 62: lat
  ```
  tabulate gmr, gen(GMR)
  ```
- Line 63: lat
  ```
  tabulate flow, gen(FLOW)
  ```
- Line 65: lat
  ```
  * Tables B2-B3 and Figure 1C. Flat manuscript-facing outputs use CSV; multi-sheet outputs use XLSX.
  ```
- Line 66: loc
  ```
  local common "Observations totpostes tothrs_fte vaht vaphrs PROD_FS_hours PROD_OP_H layerlenient lay
  ```
- Line 67: loc
  ```
  local tail "sharelowwagehrs02 avsupbruthrs avsupbruthrsl1 avsupbruthrsl2 avsupbruthrsl3 avsupbruthrs
  ```
- Line 81: lat
  ```
  * Industry composition tables B4-B6. Each flat table is exported as its own CSV file.
  ```
- Line 92: url
  ```
  * Table C1: hierarchy conditions in jobs, hours, and hourly labor costs.
  ```
- Line 98: loc
  ```
  local varlist "tothrs totpostes m_avsupbruthrs"
  ```
- Line 99: loc
  ```
  local first = 1
  ```
- Line 100: loc
  ```
  foreach x of local varlist {
  ```
- Line 102: loc
  ```
  local kp1 = `k' + 1
  ```
- Line 111: loc
  ```
  local first = 0
  ```
- Line 117: loc
  ```
  local row = `L' + 1
  ```
- Line 120: loc
  ```
  local c "`1'"
  ```
- Line 121: loc
  ```
  local col "`2'"
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/02_build_figure1_minimum_wage_paths.do**

- Line 21: name
  ```
  rename *1 *
  ```
- Line 26: name
  ```
  rename *2 *
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/03_build_figure2_labor_cost_distributions.do**

- Line 28: name
  ```
  rename `var' `=lower("`var'")'
  ```
- Line 37: loc
  ```
  local upper = `b'/10
  ```
- Line 38: loc
  ```
  local lower = (`b'-1)/10
  ```
- Line 56: name
  ```
  rename layerlenient SAMPLE
  ```
- Line 60: loc
  ```
  local panel "a"
  ```
- Line 61: loc
  ```
  if `s' == 1 local panel "b"
  ```
- Line 62: loc
  ```
  if `s' == 2 local panel "c"
  ```
- Line 63: loc
  ```
  if `s' == 3 local panel "d"
  ```
- Line 64: second
  ```
  twoway (line nn BIN if layer == 0 & SAMPLE == `s', lpattern(solid) lcolor(black)) (line nn BIN if la
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/04_prepare_table_b1_sample_inputs.do**

- Line 2: block, loc
  ```
  * Purpose: Prepare the FICUS and DADS building blocks needed for the Table B1 sample-construction fl
  ```
- Line 9: block, loc
  ```
  local bb "$root\output\generated\Output_data\For_6_STATA_ANALYSES\Building_blocks"
  ```
- Line 59: name
  ```
  rename `v' `=lower("`v'")'
  ```
- Line 95: name
  ```
  rename `v' `=lower("`v'")'
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/05_build_table_b1_sample_construction.do**

- Line 2: block, loc
  ```
  * Purpose: Combine sample-flow building blocks and export Table B1.
  ```
- Line 7: loc
  ```
  local outdata "$root/output/generated/Output_data/For_6_STATA_ANALYSES"
  ```
- Line 8: loc
  ```
  local outtable "$root/output/generated/Output_sample_construction"
  ```
- Line 9: block, loc
  ```
  cd "$root/output/generated/Output_data/For_6_STATA_ANALYSES/Building_blocks"
  ```
- Line 19: lon
  ```
  egen long gsiren = group(siren)
  ```
- Line 118: loc
  ```
  local b1_meanvars `r(varlist)'
  ```
- Line 137: name
  ```
  rename __b1_year_label year
  ```
- Line 151: loc
  ```
  local export_rc = _rc
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/functions/fn_estimate_specifications.do**

- Line 5: loc
  ```
  local baseif "year == 2006"
  ```
- Line 8: name
  ```
  tempname RESULTS
  ```
- Line 25: loc
  ```
  local depvar = e(depvar)
  ```
- Line 26: loc
  ```
  local depmean .
  ```
- Line 27: loc
  ```
  local magnitude .
  ```
- Line 28: loc
  ```
  local magnitude_se .
  ```
- Line 29: loc
  ```
  local magnitude2 .
  ```
- Line 30: loc
  ```
  local magnitude2_se .
  ```
- Line 33: loc
  ```
  local depmean = r(mean)
  ```
- Line 36: loc
  ```
  local magnitude = r(estimate)
  ```
- Line 37: loc
  ```
  local magnitude_se = r(se)
  ```
- Line 41: loc
  ```
  local magnitude = r(estimate)
  ```
- Line 42: loc
  ```
  local magnitude_se = r(se)
  ```
- Line 44: loc
  ```
  local magnitude2 = r(estimate)
  ```
- Line 45: loc
  ```
  local magnitude2_se = r(se)
  ```
- Line 59: loc
  ```
  local y_A "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2 S3.lnavsupbruthrsl3 S3.lnavsupb
  ```
- Line 60: loc
  ```
  local y_B "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2"
  ```
- Line 61: loc
  ```
  local y_C "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2 S3.lnavsupbruthrsl3"
  ```
- Line 62: loc
  ```
  local y_D "S3.lnavsupbruthrs S3.lnavsupbruthrsl1 S3.lnavsupbruthrsl2 S3.lnavsupbruthrsl3 S3.lnavsupb
  ```
- Line 63: loc
  ```
  local cond_A "`baseif'"
  ```
- Line 64: loc
  ```
  local cond_B "`baseif' & !missing(S3.lnavsupbruthrsl2) & missing(S3.lnavsupbruthrsl3)"
  ```
- Line 65: loc
  ```
  local cond_C "`baseif' & !missing(S3.lnavsupbruthrsl3) & missing(S3.lnavsupbruthrsl4)"
  ```
- Line 66: loc
  ```
  local cond_D "`baseif' & !missing(S3.lnavsupbruthrsl4)"
  ```
- Line 67: loc
  ```
  local groups "A"
  ```
- Line 68: loc
  ```
  if $full_panels == 1 local groups "A B C D"
  ```
- Line 69: loc
  ```
  foreach group of local groups {
  ```
- Line 70: loc
  ```
  local ptitle "(`group')"
  ```
- Line 71: loc
  ```
  if "`group'" == "A" local ptitle "(A) All firms"
  ```
- Line 72: loc
  ```
  if "`group'" == "B" local ptitle "(B) 1-layer firms"
  ```
- Line 73: loc
  ```
  if "`group'" == "C" local ptitle "(C) 2-layer firms"
  ```
- Line 74: loc
  ```
  if "`group'" == "D" local ptitle "(D) 3-layer firms"
  ```
- Line 75: loc
  ```
  local magopt ""
  ```
- Line 76: loc
  ```
  if "`group'" == "A" local magopt "mag"
  ```
- Line 77: loc
  ```
  local col 1
  ```
- Line 78: loc
  ```
  foreach y of local y_`group' {
  ```
- Line 80: loc
  ```
  local ++col
  ```
- Line 83: loc
  ```
  local y_A "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2 S3.lntotpostesl3 S3.lntotpostesl4"
  ```
- Line 84: loc
  ```
  local y_B "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2"
  ```
- Line 85: loc
  ```
  local y_C "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2 S3.lntotpostesl3"
  ```
- Line 86: loc
  ```
  local y_D "S3.lntotpostes S3.lntotpostesl1 S3.lntotpostesl2 S3.lntotpostesl3 S3.lntotpostesl4"
  ```
- Line 87: loc
  ```
  local cond_A "`baseif'"
  ```
- Line 88: loc
  ```
  local cond_B "`baseif' & !missing(S3.lntotpostesl2) & missing(S3.lntotpostesl3)"
  ```
- Line 89: loc
  ```
  local cond_C "`baseif' & !missing(S3.lntotpostesl3) & missing(S3.lntotpostesl4)"
  ```
- Line 90: loc
  ```
  local cond_D "`baseif' & !missing(S3.lntotpostesl4)"
  ```
- Line 91: loc
  ```
  foreach group of local groups {
  ```
- Line 92: loc
  ```
  local ptitle "(`group')"
  ```
- Line 93: loc
  ```
  if "`group'" == "A" local ptitle "(A) All firms"
  ```
- Line 94: loc
  ```
  if "`group'" == "B" local ptitle "(B) 1-layer firms"
  ```
- Line 95: loc
  ```
  if "`group'" == "C" local ptitle "(C) 2-layer firms"
  ```
- Line 96: loc
  ```
  if "`group'" == "D" local ptitle "(D) 3-layer firms"
  ```
- Line 97: loc
  ```
  local magopt ""
  ```
- Line 98: loc
  ```
  if "`group'" == "A" local magopt "mag"
  ```
- Line 99: loc
  ```
  local col 1
  ```
- Line 100: loc
  ```
  foreach y of local y_`group' {
  ```
- Line 102: loc
  ```
  local ++col
  ```
- Line 105: loc
  ```
  local y_A "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2 S3.lntothrsl3 S3.lntothrsl4"
  ```
- Line 106: loc
  ```
  local y_B "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2"
  ```
- Line 107: loc
  ```
  local y_C "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2 S3.lntothrsl3"
  ```
- Line 108: loc
  ```
  local y_D "S3.lntothrs S3.lntothrsl1 S3.lntothrsl2 S3.lntothrsl3 S3.lntothrsl4"
  ```
- Line 109: loc
  ```
  local cond_A "`baseif'"
  ```
- Line 110: loc
  ```
  local cond_B "`baseif' & !missing(S3.lntothrsl2) & missing(S3.lntothrsl3)"
  ```
- Line 111: loc
  ```
  local cond_C "`baseif' & !missing(S3.lntothrsl3) & missing(S3.lntothrsl4)"
  ```
- Line 112: loc
  ```
  local cond_D "`baseif' & !missing(S3.lntothrsl4)"
  ```
- Line 113: loc
  ```
  foreach group of local groups {
  ```
- Line 114: loc
  ```
  local ptitle "(`group')"
  ```
- Line 115: loc
  ```
  if "`group'" == "A" local ptitle "(A) All firms"
  ```
- Line 116: loc
  ```
  if "`group'" == "B" local ptitle "(B) 1-layer firms"
  ```
- Line 117: loc
  ```
  if "`group'" == "C" local ptitle "(C) 2-layer firms"
  ```
- Line 118: loc
  ```
  if "`group'" == "D" local ptitle "(D) 3-layer firms"
  ```
- Line 119: loc
  ```
  local magopt ""
  ```
- Line 120: loc
  ```
  if "`group'" == "A" local magopt "mag"
  ```
- Line 121: loc
  ```
  local col 1
  ```
- Line 122: loc
  ```
  foreach y of local y_`group' {
  ```
- Line 124: loc
  ```
  local ++col
  ```
- Line 127: loc
  ```
  local col 1
  ```
- Line 130: loc
  ```
  local ++col
  ```
- Line 133: loc
  ```
  local cond_A "`baseif' & CONT_FP == 1"
  ```
- Line 134: loc
  ```
  local cond_B "`baseif' & CONT_FP == 1 & !missing(S3.lntothrsl2) & missing(S3.lntothrsl3)"
  ```
- Line 135: loc
  ```
  local cond_C "`baseif' & CONT_FP == 1 & !missing(S3.lntothrsl3) & missing(S3.lntothrsl4)"
  ```
- Line 136: loc
  ```
  local cond_D "`baseif' & CONT_FP == 1 & !missing(S3.lntothrsl4)"
  ```
- Line 137: loc
  ```
  local col 1
  ```
- Line 140: loc
  ```
  local ++col
  ```
- Line 142: loc
  ```
  local col 1
  ```
- Line 145: loc
  ```
  local ++col
  ```
- Line 148: loc
  ```
  local col 1
  ```
- Line 151: loc
  ```
  local ++col
  ```
- Line 153: loc
  ```
  local col 1
  ```
- Line 156: loc
  ```
  local ++col
  ```
- Line 158: loc
  ```
  local col 1
  ```
- Line 161: loc
  ```
  local ++col
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/functions/fn_export_regression_tables.do**

- Line 8: loc
  ```
  if `"`DDSUB'"' == "" local DDSUB "DD"
  ```
- Line 9: loc
  ```
  if `"`DDDSUB'"' == "" local DDDSUB "DDD"
  ```
- Line 10: loc
  ```
  if `"`OUTFILE'"' == "" local OUTFILE "tables_01_04_c02_c04.xlsx"
  ```
- Line 11: lat, loc
  ```
  local ddfile `"`ROOTPATH'/`DDSUB'/_latex_results.dta"'
  ```
- Line 12: lat, loc
  ```
  local dddfile `"`ROOTPATH'/`DDDSUB'/_latex_results.dta"'
  ```
- Line 13: loc
  ```
  local xlsxout `"`ROOTPATH'/`OUTFILE'"'
  ```
- Line 27: loc
  ```
  local allresults `"`ROOTPATH'/__regression_export_work.dta"'
  ```
- Line 51: loc
  ```
  levelsof table, local(tables)
  ```
- Line 53: loc
  ```
  local letters "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
  ```
- Line 54: loc
  ```
  local prefix ""
  ```
- Line 55: loc
  ```
  if strpos("`DDSUB'", "IV") | strpos("`DDDSUB'", "IV") local prefix "IV-"
  ```
- Line 56: loc
  ```
  foreach T of local tables {
  ```
- Line 60: loc
  ```
  local maxcol = r(max)
  ```
- Line 64: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 69: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 70: loc
  ```
  local cell ""
  ```
- Line 72: loc
  ```
  if `c' == 1 local cell "All firms"
  ```
- Line 73: loc
  ```
  if `c' == 2 local cell "1-layer firms"
  ```
- Line 74: loc
  ```
  if `c' == 3 local cell "2-layer firms"
  ```
- Line 75: loc
  ```
  if `c' == 4 local cell "3-layer firms"
  ```
- Line 78: loc
  ```
  capture levelsof depvar if panel == "A" & col == `c', local(cell) clean
  ```
- Line 79: loc
  ```
  if `"`cell'"' == "" capture levelsof depvar if col == `c', local(cell) clean
  ```
- Line 80: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 84: loc
  ```
  local row 5
  ```
- Line 85: loc
  ```
  levelsof panel, local(panels)
  ```
- Line 86: loc
  ```
  foreach P of local panels {
  ```
- Line 89: loc
  ```
  if `row' > 5 local ++row
  ```
- Line 90: loc
  ```
  local ptitle = panel_title[1]
  ```
- Line 92: loc
  ```
  local ++row
  ```
- Line 95: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 96: loc
  ```
  local cell ""
  ```
- Line 97: loc
  ```
  capture levelsof ntxt if model == "DD" & col == `c', local(cell) clean
  ```
- Line 98: loc
  ```
  if `"`cell'"' == "" capture levelsof ntxt if col == `c', local(cell) clean
  ```
- Line 99: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 102: loc
  ```
  local ++row
  ```
- Line 106: loc
  ```
  local rowlab "`prefix'`M': Delta ln lab. cost at GMR"
  ```
- Line 107: loc
  ```
  if "`M'" == "DDD" local rowlab "`prefix'DDD: Delta ln lab. cost at GMR x Share MW workers in 2002"
  ```
- Line 110: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 111: loc
  ```
  local cell ""
  ```
- Line 112: loc
  ```
  capture levelsof btxt if model == "`M'" & col == `c', local(cell) clean
  ```
- Line 113: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 116: loc
  ```
  local ++row
  ```
- Line 119: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 120: loc
  ```
  local cell ""
  ```
- Line 121: loc
  ```
  capture levelsof setxt if model == "`M'" & col == `c', local(cell) clean
  ```
- Line 122: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 125: loc
  ```
  local ++row
  ```
- Line 129: loc
  ```
  local hasmag = r(N) > 0
  ```
- Line 133: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 134: loc
  ```
  local cell ""
  ```
- Line 135: loc
  ```
  capture levelsof magtxt if model == "DD" & col == `c', local(cell) clean
  ```
- Line 136: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 139: loc
  ```
  local ++row
  ```
- Line 142: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 143: loc
  ```
  local cell ""
  ```
- Line 144: loc
  ```
  capture levelsof magtxt if model == "DDD" & col == `c', local(cell) clean
  ```
- Line 145: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 148: loc
  ```
  local ++row
  ```
- Line 151: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 152: loc
  ```
  local cell ""
  ```
- Line 153: loc
  ```
  capture levelsof mag2txt if model == "DDD" & col == `c', local(cell) clean
  ```
- Line 154: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 157: loc
  ```
  local ++row
  ```
- Line 160: loc
  ```
  local XL : word `=`c'+1' of `letters'
  ```
- Line 161: loc
  ```
  local cell ""
  ```
- Line 162: loc
  ```
  capture levelsof meantxt if model == "DD" & col == `c', local(cell) clean
  ```
- Line 163: loc
  ```
  if `"`cell'"' == "" capture levelsof meantxt if col == `c', local(cell) clean
  ```
- Line 164: loc
  ```
  local cell : word 1 of `cell'
  ```
- Line 167: loc
  ```
  local ++row
  ```
- Line 169: loc
  ```
  local row = `row' + 1
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/6_STATA_ANALYSES/functions/fn_run_regression_family.do**

- Line 25: lat
  ```
  global resultfile "$path/_latex_results.dta"
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Programs/7_SAS_APPENDIX_G/01_compute_table_g1_zero_layer_moment.sas**

- Line 8: lat
  ```
  The portable code below preserves that historical calculation.
  ```
- Line 13: lat
  ```
  Historical calculation preserved here:
  ```
- Line 54: name
  ```
  libname _mwgen "&root\output\generated";
  ```
- Line 55: name
  ```
  libname _mwgen clear;
  ```
- Line 56: name
  ```
  libname _mwmom "&root\output\generated\Output_moments";
  ```
- Line 57: name
  ```
  libname _mwmom clear;
  ```
- Line 60: name
  ```
  /* Resolve CASD folder names without hard-coding project/user names or accents. */
  ```
- Line 72: loc
  ```
  %local _dsid _v_siren _v_e200 _v_r401 _rc;
  ```
- Line 89: loc
  ```
  %local _mem;
  ```
- Line 93: name
  ```
  libname F&year "&casd_data_root\&&_fare_dir_&year" access=readonly;
  ```
- Line 142: name
  ```
  libname F&year clear;
  ```
- Line 146: loc
  ```
  %local year;
  ```
- Line 184: son
  ```
  length exhibit $40 moment $80 source_years $16 construction $500 comparison_status $24;
  ```
- Line 192: son
  ```
  if matches_manuscript_at_3_decimals then comparison_status='MATCH';
  ```
- Line 193: son
  ```
  else comparison_status='CHECK';
  ```
- Line 206: name
  ```
  putnames=yes;
  ```
- Line 212: name
  ```
  putnames=yes;
  ```
- Line 231: lat
  ```
  %put NOTE: Table G1 FARE 2010-2016 calculation completed.;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Tools/00_check_sas_environment.sas**

- Line 3: lat
  ```
  Purpose: Record SAS version/platform and confirm package-level path variables before the CASD analys
  ```
- Line 16: lon
  ```
  %put NOTE: SYSVLONG4=&SYSVLONG4.;
  ```
- Line 23: name
  ```
  filename _mwenv "&root\output\run_metadata\sas_environment.txt" encoding='utf-8';
  ```
- Line 26: lon
  ```
  put "sas_version=&SYSVLONG4.";
  ```
- Line 36: name
  ```
  filename _mwenv clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Tools/00_check_stata_environment.do**

- Line 20: loc
  ```
  local stata_version = c(stata_version)
  ```
- Line 21: loc
  ```
  local stata_os `"`c(os)'"'
  ```
- Line 22: loc
  ```
  local machine_type `"`c(machine_type)'"'
  ```
- Line 23: loc
  ```
  local processors = c(processors)
  ```
- Line 24: loc
  ```
  local born_date `"`c(born_date)'"'
  ```
- Line 25: loc
  ```
  local flavor `"`c(flavor)'"'
  ```
- Line 26: loc
  ```
  local bit = c(bit)
  ```
- Line 61: loc
  ```
  st_local("__ado_path", fn)
  ```
- Line 62: loc
  ```
  st_local("__ado_header", "")
  ```
- Line 63: loc
  ```
  st_local("__ado_version", "")
  ```
- Line 138: loc
  ```
  st_local("__ado_header", raw)
  ```
- Line 139: loc
  ```
  st_local("__ado_version", ver)
  ```
- Line 144: loc
  ```
  local required "esttab estpost estout tabout reghdfe ivreghdfe ivreg2 ranktest ftools"
  ```
- Line 145: loc
  ```
  local missing 0
  ```
- Line 146: loc
  ```
  local unparsed 0
  ```
- Line 148: name
  ```
  tempname __pkgpost
  ```
- Line 152: loc
  ```
  foreach cmd of local required {
  ```
- Line 153: loc
  ```
  local package_group "`cmd'"
  ```
- Line 154: loc
  ```
  if inlist("`cmd'", "esttab", "estpost", "estout") local package_group "estout"
  ```
- Line 155: loc
  ```
  if inlist("`cmd'", "ivreg2", "ranktest") local package_group "ivreg2/ranktest"
  ```
- Line 163: loc
  ```
  local __ado_path ""
  ```
- Line 164: loc
  ```
  local __ado_header ""
  ```
- Line 165: loc
  ```
  local __ado_version ""
  ```
- Line 171: loc
  ```
  local missing = `missing' + 1
  ```
- Line 178: loc
  ```
  local unparsed = `unparsed' + 1
  ```
- Line 200: loc
  ```
  local __N = r(N)
  ```

**/replication-package/Replication Files/StataSas_CASD/code/Tools/00_resolve_casd_paths.sas**

- Line 3: name
  ```
  Purpose: Resolve CASD subdirectory names without exposing accented characters
  ```
- Line 43: name
  ```
  length parent parentvar contains contains2 exclude outname fullpath $2048;
  ```
- Line 49: name
  ```
  inserting directory names containing apostrophes into generated
  ```
- Line 57: name
  ```
  outname    = symget('out');
  ```
- Line 62: name
  ```
  named macro variable.  This is safe even if its value contains an
  ```
- Line 68: name
  ```
  rc = filename('_mwscan', strip(parent));
  ```
- Line 78: name
  ```
  rc = filename('_mwscan');
  ```
- Line 101: name
  ```
  call symputx(strip(outname), strip(result), 'g');
  ```
- Line 108: name
  ```
  rc = filename('_mwscan');
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/00_PREPARE_DIRECTORIES.do**

- Line 11: loc
  ```
  local normalized_root = subinstr(`"`package_root'"', "\", "/", .)
  ```
- Line 22: loc
  ```
  local start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 23: loc
  ```
  local t0 = clock("`start_stamp'", "DMY hms")
  ```
- Line 25: block, loc
  ```
  local dirs "output/logs output/logs/timings output/run_metadata output/generated output/generated/Ou
  ```
- Line 26: loc
  ```
  foreach d of local dirs {
  ```
- Line 33: loc
  ```
  local end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 34: loc
  ```
  local t1 = clock("`end_stamp'", "DMY hms")
  ```
- Line 35: loc
  ```
  local elapsed = (`t1' - `t0')/1000
  ```
- Line 36: loc, minute
  ```
  local minutes = `elapsed'/60
  ```
- Line 37: loc
  ```
  local hours = `elapsed'/3600
  ```
- Line 38: loc
  ```
  local elapsed_s : display %18.3f `elapsed'
  ```
- Line 39: loc, minute
  ```
  local minutes_s : display %18.3f `minutes'
  ```
- Line 40: loc
  ```
  local hours_s : display %18.6f `hours'
  ```
- Line 42: block, loc
  ```
  file write __timing "block=00 setup - prepare directories" _n
  ```
- Line 46: second
  ```
  file write __timing "elapsed_seconds=`elapsed_s'" _n
  ```
- Line 47: minute
  ```
  file write __timing "elapsed_minutes=`minutes_s'" _n
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/01_SAS_CHECK_ENVIRONMENT.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\01_SAS_CHECK_ENVIRONMENT.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/02_STATA_CHECK_ENVIRONMENT.do**

- Line 9: loc
  ```
  local timing_dir "$root/output/logs/timings"
  ```
- Line 12: loc
  ```
  local stage_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 13: loc
  ```
  local stage_t0 = clock("`stage_start_stamp'", "DMY hms")
  ```
- Line 16: loc
  ```
  local b1_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 17: loc
  ```
  local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
  ```
- Line 19: loc
  ```
  local b1_rc = _rc
  ```
- Line 20: loc
  ```
  local b1_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 21: loc
  ```
  local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
  ```
- Line 22: loc
  ```
  local b1_elapsed = (`b1_t1' - `b1_t0')/1000
  ```
- Line 23: loc, minute
  ```
  local b1_minutes = `b1_elapsed'/60
  ```
- Line 24: loc
  ```
  local b1_hours = `b1_elapsed'/3600
  ```
- Line 25: loc
  ```
  local b1_elapsed_s : display %18.3f `b1_elapsed'
  ```
- Line 26: loc, minute
  ```
  local b1_minutes_s : display %18.3f `b1_minutes'
  ```
- Line 27: loc
  ```
  local b1_hours_s : display %18.6f `b1_hours'
  ```
- Line 29: block, loc
  ```
  file write __timing "block=Stata environment check" _n
  ```
- Line 33: second
  ```
  file write __timing "elapsed_seconds=`b1_elapsed_s'" _n
  ```
- Line 34: minute
  ```
  file write __timing "elapsed_minutes=`b1_minutes_s'" _n
  ```
- Line 39: block, loc
  ```
  di as error "Block failed with Stata return code `b1_rc'. Timing file was still written."
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\03_SAS_BUILD_RTT_GMR_ASSIGNMENTS.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/04_SAS_EXTRACT_DADS_JOBS.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\04_SAS_EXTRACT_DADS_JOBS.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/05_SAS_BUILD_MINIMUM_WAGE_INPUTS.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\05_SAS_BUILD_MINIMUM_WAGE_INPUTS.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 35: lat
  ```
  put "stage=5/15 - SAS build minimum-wage simulation inputs";
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/06_SAS_EXTRACT_FICUS_ACCOUNTS.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\06_SAS_EXTRACT_FICUS_ACCOUNTS.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/07_SAS_EXTRACT_TRAINING_2483.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\07_SAS_EXTRACT_TRAINING_2483.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/08_SAS_EXTRACT_DADS_1993_CALIBRATION.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: name
  ```
  filename mwtim "&root\output\logs\timings\08_SAS_EXTRACT_DADS_1993_CALIBRATION.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.sas**

- Line 23: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 27: lat, name
  ```
  filename mwtim "&root\output\logs\timings\09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.txt";
  ```
- Line 33: minute
  ```
  minutes = &_mw_minutes;
  ```
- Line 35: lat
  ```
  put "stage=9/15 - SAS extract industry nomenclatures";
  ```
- Line 39: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 40: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 44: name
  ```
  filename mwtim clear;
  ```
- Line 47: lat
  ```
  %put NOTE: Timing file: &root\output\logs\timings\09_SAS_EXTRACT_INDUSTRY_NOMENCLATURES.txt;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.sas**

- Line 24: lon
  ```
  /* Ensure timing directories exist when this stand-alone wrapper is run outside Stage 00. */
  ```
- Line 26: name
  ```
  libname _mwlg "&root\output\logs";
  ```
- Line 27: name
  ```
  libname _mwlg clear;
  ```
- Line 28: name
  ```
  libname _mwtm "&root\output\logs\timings";
  ```
- Line 29: name
  ```
  libname _mwtm clear;
  ```
- Line 36: minute
  ```
  %let _mw_minutes=%sysevalf(&_mw_elapsed / 60);
  ```
- Line 40: name
  ```
  filename mwtim "&root\output\logs\timings\10_SAS_TABLE_G1_ZERO_LAYER_MOMENT.txt";
  ```
- Line 46: minute
  ```
  minutes=&_mw_minutes;
  ```
- Line 52: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 53: minute
  ```
  put "elapsed_minutes=" minutes 18.3;
  ```
- Line 57: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/11_STATA_PREPROCESSING.do**

- Line 9: loc
  ```
  local timing_dir "$root/output/logs/timings"
  ```
- Line 12: loc
  ```
  local stage_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 13: loc
  ```
  local stage_t0 = clock("`stage_start_stamp'", "DMY hms")
  ```
- Line 16: loc
  ```
  local b1_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 17: loc
  ```
  local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
  ```
- Line 19: loc
  ```
  local b1_rc = _rc
  ```
- Line 20: loc
  ```
  local b1_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 21: loc
  ```
  local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
  ```
- Line 22: loc
  ```
  local b1_elapsed = (`b1_t1' - `b1_t0')/1000
  ```
- Line 23: loc, minute
  ```
  local b1_minutes = `b1_elapsed'/60
  ```
- Line 24: loc
  ```
  local b1_hours = `b1_elapsed'/3600
  ```
- Line 25: loc
  ```
  local b1_elapsed_s : display %18.3f `b1_elapsed'
  ```
- Line 26: loc, minute
  ```
  local b1_minutes_s : display %18.3f `b1_minutes'
  ```
- Line 27: loc
  ```
  local b1_hours_s : display %18.6f `b1_hours'
  ```
- Line 29: block, loc
  ```
  file write __timing "block=Prepare training 2483" _n
  ```
- Line 33: second
  ```
  file write __timing "elapsed_seconds=`b1_elapsed_s'" _n
  ```
- Line 34: minute
  ```
  file write __timing "elapsed_minutes=`b1_minutes_s'" _n
  ```
- Line 39: block, loc
  ```
  di as error "Block failed with Stata return code `b1_rc'. Timing file was still written."
  ```
- Line 43: lat
  ```
  di as text "Starting: Prepare national accounts deflators"
  ```
- Line 44: loc
  ```
  local b2_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 45: loc
  ```
  local b2_t0 = clock("`b2_start_stamp'", "DMY hms")
  ```
- Line 46: lat
  ```
  capture noisily do "$root/code/Programs/3_STATA_PREPROCESSING_ORGA/02_prepare_national_accounts_defl
  ```
- Line 47: loc
  ```
  local b2_rc = _rc
  ```
- Line 48: loc
  ```
  local b2_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 49: loc
  ```
  local b2_t1 = clock("`b2_end_stamp'", "DMY hms")
  ```
- Line 50: loc
  ```
  local b2_elapsed = (`b2_t1' - `b2_t0')/1000
  ```
- Line 51: loc, minute
  ```
  local b2_minutes = `b2_elapsed'/60
  ```
- Line 52: loc
  ```
  local b2_hours = `b2_elapsed'/3600
  ```
- Line 53: loc
  ```
  local b2_elapsed_s : display %18.3f `b2_elapsed'
  ```
- Line 54: loc, minute
  ```
  local b2_minutes_s : display %18.3f `b2_minutes'
  ```
- Line 55: loc
  ```
  local b2_hours_s : display %18.6f `b2_hours'
  ```
- Line 57: block, lat, loc
  ```
  file write __timing "block=Prepare national accounts deflators" _n
  ```
- Line 61: second
  ```
  file write __timing "elapsed_seconds=`b2_elapsed_s'" _n
  ```
- Line 62: minute
  ```
  file write __timing "elapsed_minutes=`b2_minutes_s'" _n
  ```
- Line 67: block, loc
  ```
  di as error "Block failed with Stata return code `b2_rc'. Timing file was still written."
  ```
- Line 72: loc
  ```
  local b3_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 73: loc
  ```
  local b3_t0 = clock("`b3_start_stamp'", "DMY hms")
  ```
- Line 75: loc
  ```
  local b3_rc = _rc
  ```
- Line 76: loc
  ```
  local b3_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 77: loc
  ```
  local b3_t1 = clock("`b3_end_stamp'", "DMY hms")
  ```
- Line 78: loc
  ```
  local b3_elapsed = (`b3_t1' - `b3_t0')/1000
  ```
- Line 79: loc, minute
  ```
  local b3_minutes = `b3_elapsed'/60
  ```
- Line 80: loc
  ```
  local b3_hours = `b3_elapsed'/3600
  ```
- Line 81: loc
  ```
  local b3_elapsed_s : display %18.3f `b3_elapsed'
  ```
- Line 82: loc, minute
  ```
  local b3_minutes_s : display %18.3f `b3_minutes'
  ```
- Line 83: loc
  ```
  local b3_hours_s : display %18.6f `b3_hours'
  ```
- Line 85: block, loc
  ```
  file write __timing "block=Build policy parameter grid" _n
  ```
- Line 89: second
  ```
  file write __timing "elapsed_seconds=`b3_elapsed_s'" _n
  ```
- Line 90: minute
  ```
  file write __timing "elapsed_minutes=`b3_minutes_s'" _n
  ```
- Line 95: block, loc
  ```
  di as error "Block failed with Stata return code `b3_rc'. Timing file was still written."
  ```
- Line 99: loc
  ```
  local stage_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 100: loc
  ```
  local stage_t1 = clock("`stage_end_stamp'", "DMY hms")
  ```
- Line 101: loc
  ```
  local stage_elapsed = (`stage_t1' - `stage_t0')/1000
  ```
- Line 102: loc, minute
  ```
  local stage_minutes = `stage_elapsed'/60
  ```
- Line 103: loc
  ```
  local stage_hours = `stage_elapsed'/3600
  ```
- Line 104: loc
  ```
  local stage_elapsed_s : display %18.3f `stage_elapsed'
  ```
- Line 105: loc, minute
  ```
  local stage_minutes_s : display %18.3f `stage_minutes'
  ```
- Line 106: loc
  ```
  local stage_hours_s : display %18.6f `stage_hours'
  ```
- Line 112: second
  ```
  file write __stage "elapsed_seconds=`stage_elapsed_s'" _n
  ```
- Line 113: minute
  ```
  file write __stage "elapsed_minutes=`stage_minutes_s'" _n
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12A_SAS_BUILD_ORGANIZATION_BASE.sas**

- Line 29: name
  ```
  libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
  ```
- Line 30: name
  ```
  libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
  ```
- Line 31: name
  ```
  libname sim  "&root\output\generated\Output_data\For_1_SAS_DADS\SIMUL";
  ```
- Line 32: name
  ```
  libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";
  ```
- Line 44: name
  ```
  getnames=yes;
  ```
- Line 54: name
  ```
  getnames=yes;
  ```
- Line 79: name
  ```
  filename mwtim "&root\output\logs\timings\12A_SAS_BUILD_ORGANIZATION_BASE.txt";
  ```
- Line 89: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 92: name
  ```
  filename mwtim clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12B_SAS_BUILD_ORGANIZATION_YEAR_ENGINE.sas**

- Line 33: lat
  ```
  %SUPERQ: repeated 12B runs in one SAS session would otherwise accumulate
  ```
- Line 42: name
  ```
  libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
  ```
- Line 43: name
  ```
  libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
  ```
- Line 44: name
  ```
  libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";
  ```
- Line 68: name
  ```
  getnames=yes;
  ```
- Line 104: name
  ```
  filename mwtim "&root\output\logs\timings\12B_SAS_BUILD_ORGANIZATION_&organization_year..txt";
  ```
- Line 115: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 118: name
  ```
  filename mwtim clear;
  ```
- Line 126: name
  ```
  libname q clear;
  ```
- Line 127: name
  ```
  libname a clear;
  ```
- Line 128: name
  ```
  libname outp clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/12A_SAS_BUILD_ORGANIZATION/12C_SAS_BUILD_ORGANIZATION_FINALIZE.sas**

- Line 30: name
  ```
  libname q    "&root\data\public\original\For_1_SAS_DADS\TxCot";
  ```
- Line 31: name
  ```
  libname a    "&root\output\generated\Output_data\For_1_SAS_DADS\POSTES";
  ```
- Line 32: name
  ```
  libname outp "&root\output\generated\Output_data\For_4_SAS_ORGANIZATIONS\SAS";
  ```
- Line 57: name
  ```
  getnames=yes;
  ```
- Line 88: name
  ```
  filename mwtim "&root\output\logs\timings\12C_SAS_BUILD_ORGANIZATION_FINALIZE.txt";
  ```
- Line 98: second
  ```
  put "elapsed_seconds=" elapsed 18.3;
  ```
- Line 101: name
  ```
  filename mwtim clear;
  ```
- Line 108: name
  ```
  libname q clear;
  ```
- Line 109: name
  ```
  libname a clear;
  ```
- Line 110: name
  ```
  libname outp clear;
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/13_STATA_BUILD_FINAL_ANALYSIS_DATA.do**

- Line 9: loc
  ```
  local timing_dir "$root/output/logs/timings"
  ```
- Line 12: loc
  ```
  local stage_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 13: loc
  ```
  local stage_t0 = clock("`stage_start_stamp'", "DMY hms")
  ```
- Line 16: loc
  ```
  local b1_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 17: loc
  ```
  local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
  ```
- Line 19: loc
  ```
  local b1_rc = _rc
  ```
- Line 20: loc
  ```
  local b1_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 21: loc
  ```
  local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
  ```
- Line 22: loc
  ```
  local b1_elapsed = (`b1_t1' - `b1_t0')/1000
  ```
- Line 23: loc, minute
  ```
  local b1_minutes = `b1_elapsed'/60
  ```
- Line 24: loc
  ```
  local b1_hours = `b1_elapsed'/3600
  ```
- Line 25: loc
  ```
  local b1_elapsed_s : display %18.3f `b1_elapsed'
  ```
- Line 26: loc, minute
  ```
  local b1_minutes_s : display %18.3f `b1_minutes'
  ```
- Line 27: loc
  ```
  local b1_hours_s : display %18.6f `b1_hours'
  ```
- Line 29: block, loc
  ```
  file write __timing "block=Build final analysis data" _n
  ```
- Line 33: second
  ```
  file write __timing "elapsed_seconds=`b1_elapsed_s'" _n
  ```
- Line 34: minute
  ```
  file write __timing "elapsed_minutes=`b1_minutes_s'" _n
  ```
- Line 39: block, loc
  ```
  di as error "Block failed with Stata return code `b1_rc'. Timing file was still written."
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/14_STATA_EMPIRICAL_ANALYSIS.do**

- Line 9: loc
  ```
  local timing_dir "$root/output/logs/timings"
  ```
- Line 12: loc
  ```
  local stage_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 13: loc
  ```
  local stage_t0 = clock("`stage_start_stamp'", "DMY hms")
  ```
- Line 16: loc
  ```
  local b1_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 17: loc
  ```
  local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
  ```
- Line 19: loc
  ```
  local b1_rc = _rc
  ```
- Line 20: loc
  ```
  local b1_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 21: loc
  ```
  local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
  ```
- Line 22: loc
  ```
  local b1_elapsed = (`b1_t1' - `b1_t0')/1000
  ```
- Line 23: loc, minute
  ```
  local b1_minutes = `b1_elapsed'/60
  ```
- Line 24: loc
  ```
  local b1_hours = `b1_elapsed'/3600
  ```
- Line 25: loc
  ```
  local b1_elapsed_s : display %18.3f `b1_elapsed'
  ```
- Line 26: loc, minute
  ```
  local b1_minutes_s : display %18.3f `b1_minutes'
  ```
- Line 27: loc
  ```
  local b1_hours_s : display %18.6f `b1_hours'
  ```
- Line 29: block, loc
  ```
  file write __timing "block=Build Figure 1 minimum-wage paths" _n
  ```
- Line 33: second
  ```
  file write __timing "elapsed_seconds=`b1_elapsed_s'" _n
  ```
- Line 34: minute
  ```
  file write __timing "elapsed_minutes=`b1_minutes_s'" _n
  ```
- Line 39: block, loc
  ```
  di as error "Block failed with Stata return code `b1_rc'. Timing file was still written."
  ```
- Line 44: loc
  ```
  local b2_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 45: loc
  ```
  local b2_t0 = clock("`b2_start_stamp'", "DMY hms")
  ```
- Line 47: loc
  ```
  local b2_rc = _rc
  ```
- Line 48: loc
  ```
  local b2_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 49: loc
  ```
  local b2_t1 = clock("`b2_end_stamp'", "DMY hms")
  ```
- Line 50: loc
  ```
  local b2_elapsed = (`b2_t1' - `b2_t0')/1000
  ```
- Line 51: loc, minute
  ```
  local b2_minutes = `b2_elapsed'/60
  ```
- Line 52: loc
  ```
  local b2_hours = `b2_elapsed'/3600
  ```
- Line 53: loc
  ```
  local b2_elapsed_s : display %18.3f `b2_elapsed'
  ```
- Line 54: loc, minute
  ```
  local b2_minutes_s : display %18.3f `b2_minutes'
  ```
- Line 55: loc
  ```
  local b2_hours_s : display %18.6f `b2_hours'
  ```
- Line 57: block, loc
  ```
  file write __timing "block=Build Figure 2 labor-cost distributions" _n
  ```
- Line 61: second
  ```
  file write __timing "elapsed_seconds=`b2_elapsed_s'" _n
  ```
- Line 62: minute
  ```
  file write __timing "elapsed_minutes=`b2_minutes_s'" _n
  ```
- Line 67: block, loc
  ```
  di as error "Block failed with Stata return code `b2_rc'. Timing file was still written."
  ```
- Line 72: loc
  ```
  local b3_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 73: loc
  ```
  local b3_t0 = clock("`b3_start_stamp'", "DMY hms")
  ```
- Line 75: loc
  ```
  local b3_rc = _rc
  ```
- Line 76: loc
  ```
  local b3_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 77: loc
  ```
  local b3_t1 = clock("`b3_end_stamp'", "DMY hms")
  ```
- Line 78: loc
  ```
  local b3_elapsed = (`b3_t1' - `b3_t0')/1000
  ```
- Line 79: loc, minute
  ```
  local b3_minutes = `b3_elapsed'/60
  ```
- Line 80: loc
  ```
  local b3_hours = `b3_elapsed'/3600
  ```
- Line 81: loc
  ```
  local b3_elapsed_s : display %18.3f `b3_elapsed'
  ```
- Line 82: loc, minute
  ```
  local b3_minutes_s : display %18.3f `b3_minutes'
  ```
- Line 83: loc
  ```
  local b3_hours_s : display %18.6f `b3_hours'
  ```
- Line 85: block, loc
  ```
  file write __timing "block=Run regression analysis" _n
  ```
- Line 89: second
  ```
  file write __timing "elapsed_seconds=`b3_elapsed_s'" _n
  ```
- Line 90: minute
  ```
  file write __timing "elapsed_minutes=`b3_minutes_s'" _n
  ```
- Line 95: block, loc
  ```
  di as error "Block failed with Stata return code `b3_rc'. Timing file was still written."
  ```
- Line 99: loc
  ```
  local stage_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 100: loc
  ```
  local stage_t1 = clock("`stage_end_stamp'", "DMY hms")
  ```
- Line 101: loc
  ```
  local stage_elapsed = (`stage_t1' - `stage_t0')/1000
  ```
- Line 102: loc, minute
  ```
  local stage_minutes = `stage_elapsed'/60
  ```
- Line 103: loc
  ```
  local stage_hours = `stage_elapsed'/3600
  ```
- Line 104: loc
  ```
  local stage_elapsed_s : display %18.3f `stage_elapsed'
  ```
- Line 105: loc, minute
  ```
  local stage_minutes_s : display %18.3f `stage_minutes'
  ```
- Line 106: loc
  ```
  local stage_hours_s : display %18.6f `stage_hours'
  ```
- Line 112: second
  ```
  file write __stage "elapsed_seconds=`stage_elapsed_s'" _n
  ```
- Line 113: minute
  ```
  file write __stage "elapsed_minutes=`stage_minutes_s'" _n
  ```

**/replication-package/Replication Files/StataSas_CASD/code/manual/15_STATA_TABLE_B1.do**

- Line 9: loc
  ```
  local timing_dir "$root/output/logs/timings"
  ```
- Line 12: loc
  ```
  local stage_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 13: loc
  ```
  local stage_t0 = clock("`stage_start_stamp'", "DMY hms")
  ```
- Line 16: loc
  ```
  local b1_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 17: loc
  ```
  local b1_t0 = clock("`b1_start_stamp'", "DMY hms")
  ```
- Line 19: loc
  ```
  local b1_rc = _rc
  ```
- Line 20: loc
  ```
  local b1_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 21: loc
  ```
  local b1_t1 = clock("`b1_end_stamp'", "DMY hms")
  ```
- Line 22: loc
  ```
  local b1_elapsed = (`b1_t1' - `b1_t0')/1000
  ```
- Line 23: loc, minute
  ```
  local b1_minutes = `b1_elapsed'/60
  ```
- Line 24: loc
  ```
  local b1_hours = `b1_elapsed'/3600
  ```
- Line 25: loc
  ```
  local b1_elapsed_s : display %18.3f `b1_elapsed'
  ```
- Line 26: loc, minute
  ```
  local b1_minutes_s : display %18.3f `b1_minutes'
  ```
- Line 27: loc
  ```
  local b1_hours_s : display %18.6f `b1_hours'
  ```
- Line 29: block, loc
  ```
  file write __timing "block=Prepare Table B1 sample inputs" _n
  ```
- Line 33: second
  ```
  file write __timing "elapsed_seconds=`b1_elapsed_s'" _n
  ```
- Line 34: minute
  ```
  file write __timing "elapsed_minutes=`b1_minutes_s'" _n
  ```
- Line 39: block, loc
  ```
  di as error "Block failed with Stata return code `b1_rc'. Timing file was still written."
  ```
- Line 44: loc
  ```
  local b2_start_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 45: loc
  ```
  local b2_t0 = clock("`b2_start_stamp'", "DMY hms")
  ```
- Line 47: loc
  ```
  local b2_rc = _rc
  ```
- Line 48: loc
  ```
  local b2_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 49: loc
  ```
  local b2_t1 = clock("`b2_end_stamp'", "DMY hms")
  ```
- Line 50: loc
  ```
  local b2_elapsed = (`b2_t1' - `b2_t0')/1000
  ```
- Line 51: loc, minute
  ```
  local b2_minutes = `b2_elapsed'/60
  ```
- Line 52: loc
  ```
  local b2_hours = `b2_elapsed'/3600
  ```
- Line 53: loc
  ```
  local b2_elapsed_s : display %18.3f `b2_elapsed'
  ```
- Line 54: loc, minute
  ```
  local b2_minutes_s : display %18.3f `b2_minutes'
  ```
- Line 55: loc
  ```
  local b2_hours_s : display %18.6f `b2_hours'
  ```
- Line 57: block, loc
  ```
  file write __timing "block=Build Table B1 sample construction" _n
  ```
- Line 61: second
  ```
  file write __timing "elapsed_seconds=`b2_elapsed_s'" _n
  ```
- Line 62: minute
  ```
  file write __timing "elapsed_minutes=`b2_minutes_s'" _n
  ```
- Line 67: block, loc
  ```
  di as error "Block failed with Stata return code `b2_rc'. Timing file was still written."
  ```
- Line 71: loc
  ```
  local stage_end_stamp "`c(current_date)' `c(current_time)'"
  ```
- Line 72: loc
  ```
  local stage_t1 = clock("`stage_end_stamp'", "DMY hms")
  ```
- Line 73: loc
  ```
  local stage_elapsed = (`stage_t1' - `stage_t0')/1000
  ```
- Line 74: loc, minute
  ```
  local stage_minutes = `stage_elapsed'/60
  ```
- Line 75: loc
  ```
  local stage_hours = `stage_elapsed'/3600
  ```
- Line 76: loc
  ```
  local stage_elapsed_s : display %18.3f `stage_elapsed'
  ```
- Line 77: loc, minute
  ```
  local stage_minutes_s : display %18.3f `stage_minutes'
  ```
- Line 78: loc
  ```
  local stage_hours_s : display %18.6f `stage_hours'
  ```
- Line 84: second
  ```
  file write __stage "elapsed_seconds=`stage_elapsed_s'" _n
  ```
- Line 85: minute
  ```
  file write __stage "elapsed_minutes=`stage_minutes_s'" _n
  ```

