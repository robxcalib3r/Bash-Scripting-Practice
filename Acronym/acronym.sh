#!/usr/bin/env bash
spChar=0
first=${1:0:1}
echo -n ${first^^}
for (( i=0; i<${#1}; i++ )); do
    char=${1:i:1}
    [[ $spChar -eq 1 ]] && [[ $char =~ ^[[:alnum:]]*$ ]] && echo -n ${char^^} && spChar=0
    [[ $char =~ ^[[:alnum:]]*$ ]] || [[ $char == "'" ]] || spChar=1
done