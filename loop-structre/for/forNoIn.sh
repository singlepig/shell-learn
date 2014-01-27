#!/bin/bash


# 缺省in列表，依次输出位置参数

i=1
for arg
do
    echo "第$i个位置参数为：$arg"
    i=$(($i+1))
done

