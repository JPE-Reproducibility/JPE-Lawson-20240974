/*
File:    01_compute_table_g1_zero_layer_moment.sas
Purpose: Reproduce the CASD-derived Table G1 target "Share of 0-layer firms" (0.170)
         from FARE 2010-2016, following the historical SAS calculation.

Historical source:
  Project/Programs/SAS/CALIBRATION_SELF_EMPLOYED/SELF_EMPLOYED_2010_2016.sas.
  The portable code below preserves that historical calculation.

Inputs:
  FARE 2010-2016 CASD products and DOI versions listed in README.md.

Historical calculation preserved here:
  1. For each year 2010-2016, keep SIREN, REDI_E200, REDI_R401.
  2. Keep observations with nonmissing REDI_R401 >= 15.
  3. Replace missing REDI_E200 by 0.
  4. Deduplicate by SIREN within year (PROC SORT NODUPKEY, as historically).
  5. Keep firms present in every year 2010-2016.
  6. Sum REDI_E200 over the seven years and define SELF = 1 when the sum is 0.
  7. The Table G1 target is mean(SELF), reported to three decimals.

Important interpretation note:
  Current CASD documentation labels REDI_E200 as salaried employment in FTE and
  REDI_R401 as total sales of merchandise. This program intentionally preserves
  the historical REDI_R401 >= 15 filter; it does not reinterpret or replace it.

Outputs:
  output/generated/Output_moments/table_g01_zero_layer_firms.csv
  output/generated/Output_moments/table_g01_fare_diagnostics.csv

The aggregate outputs remain subject to CASD/cascad output-control procedures.
*/

options mprint mlogic symbolgen;

%global root casd_data_root;
%macro _mw_g1_init;
    %if %length(%superq(root))=0 %then %let root=%sysget(REPLICATION_ROOT);
    %if %length(%superq(casd_data_root))=0 %then %let casd_data_root=%sysget(CASD_DATA_ROOT);
    %if %length(%superq(root))=0 %then %do;
        %put ERROR: Set ROOT or REPLICATION_ROOT before running the Table G1 FARE moment.;
        %abort cancel;
    %end;
    %if %length(%superq(casd_data_root))=0 %then %do;
        %put ERROR: Set CASD_DATA_ROOT before running the Table G1 FARE moment.;
        %abort cancel;
    %end;
%mend _mw_g1_init;
%_mw_g1_init;
%sysmacdelete _mw_g1_init / nowarn;

/* Ensure aggregate-output directories exist without requiring XCMD. */
options dlcreatedir;
libname _mwgen "&root\output\generated";
libname _mwgen clear;
libname _mwmom "&root\output\generated\Output_moments";
libname _mwmom clear;
options nodlcreatedir;

/* Resolve CASD folder names without hard-coding project/user names or accents. */
%include "&root\code\Tools\00_resolve_casd_paths.sas";

%let _fare_mem_2010=fare2010;
%let _fare_mem_2011=fare2011;
%let _fare_mem_2012=Fare2012_meth2012;
%let _fare_mem_2013=Fare2013meth2013;
%let _fare_mem_2014=Fare2014meth2014;
%let _fare_mem_2015=Fare2015meth2015;
%let _fare_mem_2016=Fare2016meth2016;

%macro _mw_assert_vars(ds=);
    %local _dsid _v_siren _v_e200 _v_r401 _rc;
    %let _dsid=%sysfunc(open(&ds,i));
    %if &_dsid=0 %then %do;
        %put ERROR: Required FARE dataset cannot be opened: &ds.;
        %abort cancel;
    %end;
    %let _v_siren=%sysfunc(varnum(&_dsid,SIREN));
    %let _v_e200=%sysfunc(varnum(&_dsid,REDI_E200));
    %let _v_r401=%sysfunc(varnum(&_dsid,REDI_R401));
    %let _rc=%sysfunc(close(&_dsid));
    %if &_v_siren=0 or &_v_e200=0 or &_v_r401=0 %then %do;
        %put ERROR: &ds must contain SIREN, REDI_E200 and REDI_R401.;
        %abort cancel;
    %end;
%mend _mw_assert_vars;

%macro _mw_extract_fare(year=);
    %local _mem;
    %let _mem=&&_fare_mem_&year;

    %mw_find_subdir(parent=&casd_data_root, contains=FARE_&year, out=_fare_dir_&year);
    libname F&year "&casd_data_root\&&_fare_dir_&year" access=readonly;

    %if not %sysfunc(exist(F&year..&_mem)) %then %do;
        %put ERROR: Expected FARE member F&year..&_mem not found.;
        %put ERROR- Check the FARE 2010-2016 DOI list in README.md and the DOI-specific CASD product.;
        %abort cancel;
    %end;
    %_mw_assert_vars(ds=F&year..&_mem);

    data work._fare_&year._prefilter;
        set F&year..&_mem(keep=siren redi_e200 redi_r401);
        length source_year 8;
        source_year=&year;
        emp_was_missing=missing(redi_e200);
        if missing(redi_r401) or redi_r401 < 15 then delete;
        if missing(redi_e200) then redi_e200=0;
        emp&year=redi_e200;
        keep siren emp&year emp_was_missing;
    run;

    proc sql noprint;
        select count(*), sum(emp_was_missing)
        into :_n_prefilter_&year trimmed, :_n_emp_missing_&year trimmed
        from work._fare_&year._prefilter;
    quit;

    proc sort data=work._fare_&year._prefilter
              out=work.fare&year(drop=emp_was_missing)
              dupout=work._fare_&year._duplicates
              nodupkey;
        by siren;
    run;

    proc sql noprint;
        select count(*) into :_n_unique_&year trimmed from work.fare&year;
        select count(*) into :_n_dups_&year trimmed from work._fare_&year._duplicates;
    quit;

    data work._diag_&year;
        length year 8 source_member $64 resolved_directory $512;
        year=&year;
        source_member="&_mem";
        resolved_directory="&&_fare_dir_&year";
        rows_after_historical_filter=input(symget(cats('_n_prefilter_',year)),best32.);
        missing_redi_e200_set_to_zero=input(symget(cats('_n_emp_missing_',year)),best32.);
        duplicate_siren_rows_removed=input(symget(cats('_n_dups_',year)),best32.);
        unique_firms_after_deduplication=input(symget(cats('_n_unique_',year)),best32.);
    run;

    libname F&year clear;
%mend _mw_extract_fare;

%macro _mw_run_years;
    %local year;
    %do year=2010 %to 2016;
        %_mw_extract_fare(year=&year);
    %end;
%mend _mw_run_years;
%_mw_run_years;

/* Historical balanced-panel restriction: the firm must be present in all seven years. */
data work.table_g1_balanced_panel;
    merge work.fare2010(in=i2010)
          work.fare2011(in=i2011)
          work.fare2012(in=i2012)
          work.fare2013(in=i2013)
          work.fare2014(in=i2014)
          work.fare2015(in=i2015)
          work.fare2016(in=i2016);
    by siren;
    if i2010 and i2011 and i2012 and i2013 and i2014 and i2015 and i2016;
    total_salaried_fte_2010_2016=sum(of emp2010-emp2016);
    self=(total_salaried_fte_2010_2016=0);
run;

proc sql noprint;
    select count(*), sum(self), mean(self)
    into :_g1_den trimmed, :_g1_num trimmed, :_g1_value trimmed
    from work.table_g1_balanced_panel;
quit;

%if %length(%superq(_g1_den))=0 %then %do;
    %put ERROR: The balanced FARE 2010-2016 panel count was not computed.;
    %abort cancel;
%end;
%if %sysevalf(&_g1_den=0) %then %do;
    %put ERROR: No firms remain in the balanced FARE 2010-2016 panel.;
    %abort cancel;
%end;

data work.table_g1_moment;
    length exhibit $40 moment $80 source_years $16 construction $500 comparison_status $24;
    exhibit='Table G1, Panel A, columns (iii)-(iv)';
    moment='Share of 0-layer firms';
    source_years='FARE 2010-2016';
    moment_value=&_g1_value;
    rounded_to_3_decimals=round(moment_value,0.001);
    manuscript_target=0.170;
    matches_manuscript_at_3_decimals=(abs(rounded_to_3_decimals-manuscript_target)<1e-12);
    if matches_manuscript_at_3_decimals then comparison_status='MATCH';
    else comparison_status='CHECK';
    construction='Balanced panel present in every FARE year 2010-2016; historical REDI_R401 >= 15 filter; missing REDI_E200 set to 0; SELF=1 if seven-year sum of REDI_E200 equals 0.';
    format moment_value rounded_to_3_decimals manuscript_target 12.6;
run;

data work.table_g1_diagnostics;
    set work._diag_2010 work._diag_2011 work._diag_2012 work._diag_2013
        work._diag_2014 work._diag_2015 work._diag_2016;
run;

proc export data=work.table_g1_moment
    outfile="&root\output\generated\Output_moments\table_g01_zero_layer_firms.csv"
    dbms=csv replace;
    putnames=yes;
run;

proc export data=work.table_g1_diagnostics
    outfile="&root\output\generated\Output_moments\table_g01_fare_diagnostics.csv"
    dbms=csv replace;
    putnames=yes;
run;

proc freq data=work.table_g1_balanced_panel;
    tables self / missing;
run;

proc print data=work.table_g1_moment noobs;
run;

data _null_;
    set work.table_g1_moment;
    put 'NOTE: Table G1 FARE moment = ' moment_value 12.6
        ' (rounded = ' rounded_to_3_decimals 8.3
        '; manuscript target = ' manuscript_target 8.3 ').';
    if not matches_manuscript_at_3_decimals then
        put 'WARNING: Recomputed Table G1 moment does not match 0.170 at three decimals. Review DOI versions, source members, and historical selection.';
run;

%put NOTE: Table G1 FARE 2010-2016 calculation completed.;
%put NOTE: Aggregate output: &root\output\generated\Output_moments\table_g01_zero_layer_firms.csv;
%put NOTE: Diagnostic output: &root\output\generated\Output_moments\table_g01_fare_diagnostics.csv;
