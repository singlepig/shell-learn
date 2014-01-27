#!/bin/bash

# 使用while循环时，循环体中需要有修改循环控制条件的语句，否则会陷入死循环。
# quit.sh 循环读取输入，当输入quit时才退出。

echo "=========="
echo "1.step 1"
echo "2.step 2"
echo "3.step 3"
echo "(tpye quit to end this programe.)"
echo "please enter your choice:"

# 读取输入
read INPUT
while [ $INPUT != "quit" ]
do
    echo "=========="
    echo "1.step 1"
    echo "2.step 2"
    echo "3.step 3"
    echo "(tpye quit to end this programe.)"
    echo "please enter your choice:"
    read INPUT
done
