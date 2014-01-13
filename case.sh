#!/bin/bash

echo "please choose either 1,2 or 3"
echo "[1]ls -l $1"
echo "[2]cat $1"
echo "[3]quit"
read response
case $response in
1)  ls -l $1;;
2)  cat $1;;
3)  echo "good bye."
esac

