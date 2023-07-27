#!/usr/bin/env bash
#
# Desc: Multitask
#
# Author: biga

set -euo pipefail

function task1() {
    echo "Running task1..."
    sleep 5
}
function task2() {
    echo "Running task2..."
    sleep 5
}
task1 &
task2 &
wait
echo "All done!"
