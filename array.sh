#!/usr/bin/env bash
#
# Desc: arrays
#
# Author: biga

set -euo pipefail

arr=([1]='fourth element' [4]='fifth element')

for ((i = 0; i < ${#arr[@]}; i++)); do
    echo "$i => ${arr[$i]}"
done

arr+=('zero' 'one')
echo "${arr[@]}"

for item in "${arr[@]}"; do
    echo "${item}"
done

a=($(tr ',' ' ' <<<"a,b,c,d")) # tr can transform one character to another
for y in "${a[@]}"; do
    echo "$y"
done
