#!/usr/bin/env bash
#
# Desc: Work with arguments v2
#
# Author: biga

set -euo pipefail

while [[ "$#" -gt 0 ]]; do
    case $1 in
    -f | --follow)
        FOLLOW="following"
        ;;
    -t | --tail)
        TAIL="tail=$2"
        ;;
    -h | --help | *)
        echo "use func-param.sh -f --tail 10"
        exit 0
        ;;
    esac
    shift
done
echo "FOLLOW: $FOLLOW"
echo "TAIL: $TAIL"
