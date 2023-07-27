#!/usr/bin/env bash
#
# Desc: File 2 array
#
# Author: biga

set -euo pipefail

IFS=$'\n' read -r -a arr <README.md
echo "${arr[@]}"
