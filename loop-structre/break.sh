#!/bin/bash

# 根据输入的数字决定break在第几次循环退出。

echo "输入1～9之间的一个数："
read n
for i in 1 2 3 4 5 6 7 8 9
do
    if [ $i -eq $n ];then
        echo "===结束循环==="
        break
    else
        echo "===第$i次循环==="
    fi
done
