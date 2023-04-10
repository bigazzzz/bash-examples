#!/usr/bin/env bash

echo "$(dirname "$(readlink -f "$0")")"
