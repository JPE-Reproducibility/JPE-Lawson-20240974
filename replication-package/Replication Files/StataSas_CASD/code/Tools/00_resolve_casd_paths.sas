/*
File:    00_resolve_casd_paths_quote_safe.sas
Purpose: Resolve CASD subdirectory names without exposing accented characters
         or apostrophes to the SAS macro parser.

Usage examples:

  %mw_find_subdir(
      parent=&casd_data_root,
      contains=FICUS_2001,
      contains2=STATISTIQUE ANNUELLE,
      out=_mw_ficus_2001,
      fullpath=1
  );

  %mw_find_subdir(
      parentvar=_mw_ficus_2001,
      contains=FICHIERS AVEC LES UNIT,
      exclude=CONSOLID,
      out=_mw_ficus_2001_data,
      fullpath=1
  );

The parentvar= form is the safest way to reuse a resolved path containing
an apostrophe or accented characters.
*/

%macro mw_find_subdir(
    parent=,
    parentvar=,
    contains=,
    contains2=,
    exclude=,
    out=,
    fullpath=0
);

    %global &out _mw_find_status;
    %let &out=;
    %let _mw_find_status=0;

    data _null_;
        length parent parentvar contains contains2 exclude outname fullpath $2048;
        length entry upper_entry result $2048;
        length did n i rc found 8;

        /*
        Read macro parameters at DATA-step execution time.  This avoids
        inserting directory names containing apostrophes into generated
        SAS source code.
        */
        parent     = symget('parent');
        parentvar  = symget('parentvar');
        contains   = symget('contains');
        contains2  = symget('contains2');
        exclude    = symget('exclude');
        outname    = symget('out');
        fullpath   = symget('fullpath');

        /*
        If parentvar= was supplied, obtain the parent directory from the
        named macro variable.  This is safe even if its value contains an
        apostrophe such as d'entreprise.
        */
        if not missing(strip(parentvar)) then
            parent = symget(strip(parentvar));

        rc = filename('_mwscan', strip(parent));
        if rc ne 0 then do;
            putlog 'ERROR: Could not assign CASD directory fileref. ' parent= rc=;
            call symputx('_mw_find_status', -1, 'g');
            stop;
        end;

        did = dopen('_mwscan');
        if did <= 0 then do;
            putlog 'ERROR: Could not open CASD directory. ' parent= did=;
            rc = filename('_mwscan');
            call symputx('_mw_find_status', -2, 'g');
            stop;
        end;

        found = 0;
        n = dnum(did);

        do i = 1 to n;
            entry = dread(did, i);
            upper_entry = upcase(entry);

            if index(upper_entry, upcase(strip(contains))) > 0
               and (missing(strip(contains2))
                    or index(upper_entry, upcase(strip(contains2))) > 0)
               and (missing(strip(exclude))
                    or index(upper_entry, upcase(strip(exclude))) = 0)
            then do;
                if input(strip(fullpath), best32.) = 1 then
                    result = cats(strip(parent), '\', strip(entry));
                else
                    result = entry;

                call symputx(strip(outname), strip(result), 'g');
                found = 1;
                leave;
            end;
        end;

        rc = dclose(did);
        rc = filename('_mwscan');

        if found then
            call symputx('_mw_find_status', 1, 'g');
        else do;
            putlog 'ERROR: No matching CASD subdirectory was found.';
            putlog parent=;
            putlog contains= contains2= exclude=;
            call symputx('_mw_find_status', 0, 'g');
        end;
    run;

    %if &_mw_find_status ne 1 %then %do;
        %abort cancel;
    %end;

%mend mw_find_subdir;
