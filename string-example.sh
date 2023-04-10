#!/usr/bin/env bash

echo "================================================="
a='I am a string'
echo "${a/a/A}"
echo "${a//a/A}"
echo "${a/#I/y}"
echo "${a/%g/N}"
echo "${a/g/}"

echo "================================================="
A=(hello world)
echo "${A[@]/#/R}"

echo "================================================="
var='0123456789abcdef'
printf '%s\n' "${var:3}"
printf '%s\n' "${var:3:4}"
printf '%s\n' "${var:3:-5}"
printf '%s\n' "${var: -6}"
printf '%s\n' "${var:(-6)}"
printf '%s\n' "${var: -6:-5}"

echo "================================================="
a='I am a string'
echo "${a#*a}"
echo "${a##*a}"

echo "================================================="
a='I am a string'
echo "${a%a*}"
echo "${a%%a*}"

echo "================================================="
unset var
echo "${var:-XX}"
var=""
echo "${var:-XX}"
var=23
echo "${var:-XX}"

echo "================================================="
unset var
echo "${var:=XX}" # Parameter is unset -> word is assigned to XX
echo "$var"
var="" # Parameter is null -> word is assigned to XX
echo "${var:=XX}"
echo "$var"
var=23 # Parameter is not null -> no assignment occurs
echo "${var:=XX}"
echo "$var"
