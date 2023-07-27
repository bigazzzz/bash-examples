#!/usr/bin/env bash
#
# Desc: Assotiative array
#
# Author: biga

set -euo pipefail

declare -A aa

aa[hello]=world
aa[ab]=cd
aa["key with space"]="hello world"

echo ${aa[hello]}

echo "${!aa[@]}"
echo "${aa[@]}"

for key in "${!aa[@]}"; do
    echo "Key: ${key}"
    echo "Value: ${aa[$key]}"
done

echo "len(aa) = ${#aa[@]}"
