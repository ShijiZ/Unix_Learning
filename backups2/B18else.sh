#!/bin/bash
# Else example
if [ $# -eq 1 ]
then
    cat $1
else
    cat /dev/stdin
fi
