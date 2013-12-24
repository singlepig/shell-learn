#!/bin/bash

# shift命令用来向左移动位置参数，即原来是$2赋值给$1，
# 原来的$1的值永远丢失。$#的值会减一。

set var1 var2 var3 var4
echo "parameter number:$#, there are:"
echo $1 $2 $3 $4
shift

echo "after shift, parameter number:$#, there are:"
echo $1 $2 $3 $4
