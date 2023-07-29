#!/usr/bin/env bash
n=${#1}
arm=0
for (( i=0; i<=n; i++ )); do
    each=${1:i:1}
    arm=$((arm+each**n))
done
[[ $1 -eq $arm ]] && echo "true" || echo "false"
