#!/usr/bin/env bash
#
# Desc: Loops
#
# Author: biga

set -euo pipefail

arr=(a b c d e f)
echo "=================================================="
echo "First for-loop without counter"
for i in "${arr[@]}"; do
    echo "$i"
done

echo "=================================================="
echo "Second for-loop with counter"
for ((i = 0; i < ${#arr[@]}; i++)); do
    echo "$i => ${arr[$i]}"
done

echo "=================================================="
echo "First while-loop without counter"
i=0
while [ $i -lt ${#arr[@]} ]; do
    echo "${arr[$i]}"
    i=$(expr $i + 1)
done

echo "=================================================="
echo "Second while-loop without counter"
i=0
while (($i < ${#arr[@]})); do
    echo "${arr[$i]}"
    ((i++))
done

echo "=================================================="
echo "from 1 to 10 step 3"
for i in {1..10..3}; do
    echo $i
done

echo "=================================================="
echo "First until-loop"
i=5
until [[ i -eq 10 ]]; do #Checks if i=10
    echo "i=$i"          #Print the value of i
    i=$((i + 1))         #Increment i by 1
done
