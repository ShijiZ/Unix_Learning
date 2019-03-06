#!/bin/bash
# or example

if [ $USER == 'shijizhao' ] || [ $USER == 'shiji' ]
then
    ls -alh
else
    ls
fi
