#!/usr/bin/env bash

echo "$(dirname "$(readlink -f "$0")")"

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo $DIR
