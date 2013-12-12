#!/bin/bash

# 复合语句（）和{}
# （）中的语句在fork出的新进程中执行，{}在本进程中执行
# { 前至少有一个空格，}之前应该有一个分号或者换行


VAR1=1
(VAR1=2; echo  $VAR1)
echo "VAR1 in () is:$VAR1"

{ VAR1=3; echo $VAR1;}
echo "VAR1 in {} is: $VAR1"
