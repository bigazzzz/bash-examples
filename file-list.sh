#!/usr/bin/env bash

files=(*)
# iterate over them
for file in "${files[@]}"; do
    echo "$file"
done
