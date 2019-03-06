#!/bin/bash
# A simple demonstration of back ticks
# Shiji 12/31/2017

lines=`cat $1 | wc -l`
echo The number of lines in the file $1 is $lines
