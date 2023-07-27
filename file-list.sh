#!/usr/bin/env bash
#
# Desc: Work with files
#
# Author: biga

set -euo pipefail

files=(*)
# iterate over them
for file in "${files[@]}"; do
    echo "$file"
done
