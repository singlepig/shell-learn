#!/bin/bash

# 读入N值，用until循环计算1～N的平方

i=0
echo "输入一个正整数N："
read N
until
    # 每次使i增加1
    i=$(($i+1))
test $i -gt $N
do
    RESULT=`expr $i \* $i`
    echo "square of $i is :$RESULT"
done
