#!/usr/bin/env bash

set -euo pipefail

# The following shell function will be used to generate completions for
# the "nuance_tune" command.
_nuance_tune_opts() {
    local curr_arg prev_arg
    curr_arg=${COMP_WORDS[COMP_CWORD]}
    prev_arg=${COMP_WORDS[COMP_CWORD - 1]}
    # The "config" option takes a file arg, so get a list of the files in the
    # current dir. A case statement is probably unnecessary here, but leaves
    # room to customize the parameters for other flags.
    case "$prev_arg" in
    -config)
        COMPREPLY=($(/bin/ls -1))
        return 0
        ;;
    esac
    # Use compgen to provide completions for all known options.
    COMPREPLY=($(compgen -W '-analyze -experiment -generate_groups -compute_thresh -config -output
-help -usage -force -lang -grammar_overrides -begin_date -end_date -group -dataset -multiparses -
dump_records -no_index -confidencelevel -nrecs -dry_run -rec_scripts_only -save_temp -full_trc -
single_session -verbose -ep -unsupervised -write_manifest -remap -noreparse -upload -reference -
target -use_only_matching -histogram -stepsize' -- $curr_arg))
}
# The -o parameter tells Bash to process completions as filenames, where applicable.

complete -o filenames -F _nuance_tune_opts nuance_tune
