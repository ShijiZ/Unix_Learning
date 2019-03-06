#!/bin/bash
# Backup file in unixstuff/ into directory backups/
# Shiji 12/31/2017

if [ $# != 1 ]
then
    echo Usage: A single argument which is the directory to backup
    exit
fi

if [ ! -f ~/unixstuff/$1 ]
then
    if [ ! -d ~/unixstuff/$1 ]
    then
        echo 'The given file/directory does not seem to exist (possible typo?)'
        exit
    fi
fi

date=`date +%F`
# Do we already have a backup folder for todays date?
if [ -d ~/unixstuff/backups/$1_$date ]
then
    echo 'It has already been backed up today, overwrite?'
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
else
    mkdir ~/unixstuff/backups/$1_$date
fi

cp ~/unixstuff/$1 ~/unixstuff/backups/$1_$date
echo Back up of $1 completed
