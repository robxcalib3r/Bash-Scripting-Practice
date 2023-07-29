#!/usr/bin/env bash
[[ $# -eq 0 ]] || [[ $# -eq 1 && -n $1 ]] && echo "Usage: hamming.sh <string1> <string2>" && exit 1
[ ${#1} -ne ${#2} ] && echo "--partial \"strands must be of equal length\"" && exit 1
count=0
for (( i=0; i<${#1}; i++ )); do
    [ "${1:$i:1}" != "${2:$i:1}" ] && ((count+=1))
done
echo $count