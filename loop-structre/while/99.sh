#!/bin/bash

# 输出99乘法表

i=1
while [ $i -le 9 ]
do
    j=1
    while [ $j -le $i ]
    do
        RESULT=`expr $i \* $j`
        echo -n "$i*$j=$RESULT "
        # echo -n参数表示不自动换行
        j=$(($j+1))
        # 自增j
    done
    echo "" # 输出一行后换行
    i=$(($i+1))
done


