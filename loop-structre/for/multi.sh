#!/bin/bash

# 读入一组数字，并计算这组数字的乘积

echo "输入一组数字，用空格隔开："
read numbers
RESULT=1
for I in $numbers
do
    RESULT=`expr $RESULT \* $I`
done
echo "这组数字的乘积是：$RESULT"
