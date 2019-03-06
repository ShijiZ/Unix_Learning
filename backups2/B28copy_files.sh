#!/bin/bash
# Make a backup set of files

for value in ./*
do
    used=$( df . | tail -1 | awk '{ print $5 }' | sed 's/%//' )
    if [ $used -gt 90 ]
    then
        echo Low disk space 1>&2
        break
    fi
    cp $value backups2/
done
