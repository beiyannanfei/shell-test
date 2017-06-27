#!/usr/bin/env bash

case $1 in
start | begin)
    echo "start sth"
    ;;
stop | end)
    echo "stop sth"
    ;;
*)
    echo "Ignore"
    ;;
esac
