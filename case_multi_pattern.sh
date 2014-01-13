#!/bin/bash

read choice
case $choice in
time|date)      echo "the time now is `date`.";;
dir|path)       echo "current directory is `pwd`";;
*)              echo "bad argument."
esac
