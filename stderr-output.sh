#!/usr/bin/env bash

err() {
    echo "E: $*" >>/dev/stderr
    return 1
}

cat $1 || err "something wrong"
