#!/bin/bash

# 循环输出1～10
i=1
while [ $i -le 10 ] # 判断循环次数
do
    echo "第$i次循环，输出： $i"
    i=$(($i+1)) #变量i增加
done

