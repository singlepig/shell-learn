#!/bin/bash

case $1 in
-f)     echo "find if.sh"
        find ~ -name "if.sh";;
-l)     echo "ls if.sh"
        ls -l if.sh;;
*)      echo "quit";;
esac
