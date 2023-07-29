#!/usr/bin/env bash
if [ $(($1 % 3)) != 0 ] && [ $(($1 % 5)) != 0 ] && [ $(($1 % 7)) != 0 ]
then
    echo "$1";
    exit;
fi
if [ $(($1 % 3)) == 0 ]
then
    echo -ne "Pling";
fi
if [ $(($1 % 5)) == 0 ]
then
    echo -ne "Plang";
fi
if [ $(($1 % 7)) == 0 ]
then
    echo -ne "Plong";
fi