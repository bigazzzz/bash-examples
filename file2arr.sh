#!/usr/bin/env bash

IFS=$'\n' read -r -a arr <README.md
echo "${arr[@]}"
