#!/bin/bash

# 输入N值，然后循环输出1～N的平方值

echo "请输入一个数字："
read N # 读入N值
i=1
while [ $i -le $N ]
do
    RESULT=`expr $i \* $i` # 计算平方放入变量RESULT中
    echo "$i 的平方是：$RESULT"
    i=$(($i+1))
done

