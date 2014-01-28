#!/bin/bash

# 两层while循环，在外循环4次时break，在内循环3次时break

i=1
while [ $i -lt 10 ]
do
    echo "=====外层第$i次循环====="
    if [ $i -eq 4 ];then
        echo "跳出"
        break
    fi
    j=1
    while [ $j -lt 10 ]
    do
        echo "---内层第$j次循环---"
        if [ $j -eq 3 ];then
            echo "跳出"
            break
        fi
        j=$(($j+1))
    done
    i=$(($i+1))
done
