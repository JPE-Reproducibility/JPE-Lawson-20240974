* File:    00_check_stata_environment.do
* Purpose: Record Stata build, operating system, and user-written commands required by the CASD analysis.
* Usage:   Run through the stage or package driver before scientific stages.

version 17.0
clear all
set more off
if "$root" == "" {
    global root : environment REPLICATION_ROOT
}
if "$root" == "" {
    di as error "REPLICATION_ROOT is not set. Run code/manual/00_PREPARE_DIRECTORIES.do first or set it manually."
    exit 198
}
capture mkdir "$root/output/logs"
capture mkdir "$root/output/run_metadata"
log using "$root/output/logs/stata_environment_check.log", text replace

about
local stata_version = c(stata_version)
local stata_os `"`c(os)'"'
local machine_type `"`c(machine_type)'"'
local processors = c(processors)
local born_date `"`c(born_date)'"'
local flavor `"`c(flavor)'"'
local bit = c(bit)
di as text "c(stata_version)=`stata_version'"
di as text "c(os)=`stata_os'"
di as text "c(machine_type)=`machine_type'"
di as text "c(processors)=`processors'"
di as text "c(born_date)=`born_date'"
di as text "c(flavor)=`flavor'"
di as text "c(bit)=`bit'"
creturn list

di as text _n "--- Stata system diretories ---"
sysdir
di as text _n "--- Stata ado-path ---"
adopath


file open __env using "$root/output/run_metadata/stata_environment.txt", write replace text
file write __env "stata_version=`stata_version'" _n
file write __env `"os=`stata_os'"' _n
file write __env `"machine_type=`machine_type'"' _n
file write __env "processors=`processors'" _n
file write __env `"born_date=`born_date'"' _n
file write __env `"flavor=`flavor'"' _n
file write __env "bit=`bit'" _n
file close __env

capture mata: mata drop __casd_get_ado_info()
mata:
void __casd_get_ado_info(string scalar cmd)
{
    real scalar fh, i, n
    string scalar fn, line, raw, body, ver, token, low
    string rowvector words

    fn = findfile(cmd + ".ado", c("adopath"))
    st_local("__ado_path", fn)
    st_local("__ado_header", "")
    st_local("__ado_version", "")

    if (fn == "") return

    fh = _fopen(fn, "r")
    if (fh < 0) return

    raw = ""
    ver = ""
    for (i=1; i<=100; i++) {
        line = fget(fh)
        if (rows(line)==0 | cols(line)==0) break
        line = strtrim(line)
        if (substr(line, 1, 2) != "*!") continue

        // Keep the first metadata line as an audit fallback, but continue
        // scanning until a version-bearing metadata line is found.
        if (raw == "") raw = line

        body = strtrim(substr(line, 3, .))
        words = tokens(body)
        n = cols(words)
        if (n == 0) continue

        ver = ""

        // Style 1: *! version 1.2.3 ...
        if (strlower(words[1]) == "version" & n >= 2) {
            ver = words[2]
        }

        // Style 2: *! command 1.2.3 ...
        //          *! command version 1.2.3 ...
        if (ver == "" & strlower(words[1]) == strlower(cmd) & n >= 2) {
            if (strlower(words[2]) == "version" & n >= 3) ver = words[3]
            else ver = words[2]
        }

        // Style 3: *! author/package text version 1.2.3 ...
        if (ver == "") {
            for (n=1; n<=cols(words)-1; n++) {
                if (strlower(words[n]) == "version") {
                    ver = words[n+1]
                    break
                }
            }
        }

        // Fallback: first dotted numeric-looking token (e.g. 4.1.11 or v2.1.4).
        // Dates such as 29nov2025 do not contain a dot and are ignored.
        if (ver == "") {
            for (n=1; n<=cols(words); n++) {
                token = words[n]
                low = strlower(token)
                if (substr(low,1,1) == "v") low = substr(low,2,.)
                if (strpos(low, ".") > 0 & strtoreal(substr(low,1,1)) < .) {
                    ver = token
                    break
                }
            }
        }

        if (ver != "") {
            raw = line
            break
        }
    }
    _fclose(fh)

    // Remove punctuation sometimes attached to a version token.
    ver = subinstr(ver, ",", "", .)
    ver = subinstr(ver, ";", "", .)
    ver = subinstr(ver, "(", "", .)
    ver = subinstr(ver, ")", "", .)

    st_local("__ado_header", raw)
    st_local("__ado_version", ver)
}
end
**

local required "esttab estpost estout tabout reghdfe ivreghdfe ivreg2 ranktest ftools"
local missing 0
local unparsed 0

tempname __pkgpost
tempfile __pkgdata
postfile `__pkgpost' str20 package_group str20 command str18 status str244 ado_path str40 version str244 version_header using `"`__pkgdata'"', replace

foreach cmd of local required {
    local package_group "`cmd'"
    if inlist("`cmd'", "esttab", "estpost", "estout") local package_group "estout"
    if inlist("`cmd'", "ivreg2", "ranktest") local package_group "ivreg2/ranktest"

    * Keep -which- output in the human-readable audit log.  This also gives
    * a fallback if an ado-file uses a metadata convention the parser does
    * not recognize.
    di as text _n "--- which `cmd' ---"
    capture noisily which `cmd'

    local __ado_path ""
    local __ado_header ""
    local __ado_version ""
    capture mata: __casd_get_ado_info("`cmd'")

    if `"`__ado_path'"' == "" {
        di as error "MISSING USER-WRITTEN COMMAND: `cmd'"
        post `__pkgpost' ("`package_group'") ("`cmd'") ("MISSING") ("") ("") ("")
        local missing = `missing' + 1
    }
    else if `"`__ado_version'"' == "" {
        di as error "FOUND BUT VERSION HEADER COULD NOT BE PARSED: `cmd'"
        di as text  "ado_path: `__ado_path'"
        di as text  "raw_header: `__ado_header'"
        post `__pkgpost' ("`package_group'") ("`cmd'") ("FOUND_UNPARSED") (`"`__ado_path'"') ("") (`"`__ado_header'"')
        local unparsed = `unparsed' + 1
    }
    else {
        di as result "FOUND `cmd': version `__ado_version'"
        di as text   "ado_path: `__ado_path'"
        di as text   "raw_header: `__ado_header'"
        post `__pkgpost' ("`package_group'") ("`cmd'") ("FOUND") (`"`__ado_path'"') (`"`__ado_version'"') (`"`__ado_header'"')
    }
}
postclose `__pkgpost'


use `"`__pkgdata'"', clear
order package_group command status version ado_path version_header
sort package_group command
export delimited using "$root/output/run_metadata/stata_user_written_commands.csv", replace

* Also write a compact text summary that is easy to inspect inside CASD.
file open __sum using "$root/output/run_metadata/stata_user_written_commands.txt", write replace text
file write __sum "package_group | command | status | version" _n
file write __sum "------------------------------------------------------------" _n
quietly count
local __N = r(N)
forvalues i=1/`__N' {
    file write __sum (package_group[`i']) " | " (command[`i']) " | " (status[`i']) " | " (version[`i']) _n
}
file close __sum

list package_group command status version ado_path, noobs abbreviate(32)

di as text _n "Version inventory written to:"
di as result "$root/output/run_metadata/stata_user_written_commands.csv"
di as result "$root/output/run_metadata/stata_user_written_commands.txt"
di as text "Full -which- output is preserved in output/logs/stata_environment_check.log."

capture mata: mata drop __casd_get_ado_info()
log close

* Missing commands are fatal because downstream scientific stages need them.
* An unparsed version is a documentation warning, not a replication failure:
* use the raw header and/or the -which- output in the log to fill the version.
if `missing' > 0 exit 499
if `unparsed' > 0 {
    di as error "WARNING: `unparsed' installed command(s) had an unparsed version header. See the CSV and log."
}