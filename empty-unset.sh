#!/usr/bin/env bash
#
# Desc: Check vars
#
# Author: biga

set -euo pipefail

FOO=

echo "FOO is ${FOO?UNSET}"
echo "FOO is ${FOO:?EMPTY}"

echo "BAR is ${BAR?UNSET}"
echo "BAR is ${BAR:?EMPTY}"

if [[ -n "${string+x}" ]]; then
    echo "$string is set, possibly to the empty string"
fi
if [[ -n "${string-x}" ]]; then
    echo "$string is either unset or set to a non-empty string"
fi
if [[ -z "${string+x}" ]]; then
    echo "$string is unset"
fi
if [[ -z "${string-x}" ]]; then
    echo "$string is set to an empty string"
fi

# +-----------------------+-------+-------+-----------+
# |      $string is:      | unset | empty | non-empty |
# +-----------------------+-------+-------+-----------+
# | [[ -z ${string} ]]    | true  | true  | false     |
# | [[ -z ${string+x} ]]  | true  | false | false     |
# | [[ -z ${string-x} ]]  | false | true  | false     |
# | [[ -n ${string} ]]    | false | false | true      |
# | [[ -n ${string+x} ]]  | false | true  | true      |
# | [[ -n ${string-x} ]]  | true  | false | true      |
# +-----------------------+-------+-------+-----------+
