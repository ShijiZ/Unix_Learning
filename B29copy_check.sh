#!/bin/bash
# Make a backup set of files

for value in ./*
do
    if [ ! -x $value ]
    then
        echo $value not executable 1>&2
        continue
    fi
    cp $value ./backups2/
done
