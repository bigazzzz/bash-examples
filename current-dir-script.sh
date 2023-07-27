#!/usr/bin/env bash
#
# Desc: Current directory
#
# Author: biga

set -euo pipefail

echo "$(dirname "$(readlink -f "$0")")"

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo $DIR
