#!/usr/bin/env bash
#
# Desc: Output to stderr
#
# Author: biga

set -euo pipefail

err() {
    echo "E: $*" >>/dev/stderr
    return 1
}

cat $1 || err "something wrong"
