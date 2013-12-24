#!/bin/bash

# read命令用于从键盘上读取用户输入并赋值给指定变量。
# 输入数据时，以空格或者制表符分割，变量个数和数据个数有3种情况

# （1）变量个数 = 数据个数
echo '输入3个数据：'
read var1 var2 var3
echo '你输入的数据是：'
echo $var1 : $var2 : $var3

# （2）变量个数 < 数据个数
# 这种情况下，从做到右依次赋值，最后一个赋剩余所有数据
echo '输入4个数据：'
read var1 var2 var3
echo '你输入的数据是：'
echo $var1 : $var2 : $var3

# （3）变量个数 > 数据个数
# 从左到右依次赋值，没有数据对应的变量取空
echo '输入2个数据：'
read var1 var2 var3
echo '你输入的数据是：'
echo $var1 : $var2 : $var3
