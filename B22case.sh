#!/bin/bash
# case example

case $1 in
    start)
        echo Starting
        ;;
    stop)
        echo Stoping
        ;;
    restart)
        echo Restarting
        ;;
    *)
        echo don\'t know
        ;;
esac
