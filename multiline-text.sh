#!/usr/bin/env bash

newline1='
'
newline2="
"
newline3=$'\n'
echo "Line${newline1}break"
echo "Line${newline2}break"
echo "Line${newline3}break"

echo $'Tab: [\t]'
echo $'Tab again: [\009]'
echo $'Form feed: [\f]'
echo $'Line\nbreak'
