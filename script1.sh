#!/bin/bash

# 赋值方式:
#   变量名=变量值
# 变量名组成：字母、下划线开头，包含字母下划线数字
# 赋值号=两边不能有空格



echo "引用未定义变量:notDefined"
echo $notDefined

echo ========================
# 变量名后紧跟一个由非空白字符开始的字符串时，
# 为了使用变量名和其后的字符串区分开，应该使用{}包含
position=/usr/include/
cat ${position}termio.h

echo ========================
# 设置变量str=is_a_string
str=is_a_string
echo str = $str
echo unset str 之后
unset str
echo str = $str

echo ========================
# 特殊变量引用：${#var}可以得到变量的长度，即字符数
str1="i am a bad guy."
echo str1=$str1
echo length of str1 is ${#str1}

echo ========================
# 命令替换：
# 将一个或多个命令执行的结果赋给变量
# `...` 或者 $(...)
str2=`pwd; who`
echo $str2

echo ========================
# 使用内部命令declare或typeset来限定变量属性
# declare常用属性
# -r 只读   -i 整数
# -a 数组   -f 函数
# -x 导出变量
declare -r size=10
size=12

n=10
echo n=$n
n=n+20
echo n=n+20 : n=$n
declare -i n
n=10
n=n+30
echo n=n+30 : n=$n

echo ========================
# 数组变量
name[0]=singlepig
name[1]=xiaohui
name[2]=zhoulin
# 组合赋值
name2=(laotou laomeng linkang)
echo ${#name2} = ${#name2[0]}
# ${数组名[*]}和${数组名[@]}表示医用数组中的所有非空元素
echo ${name[*]}
echo ${name[@]}
echo $name 
# 取消数组定义
unset name
echo $name
# ${#name2[*]}和${#name2[@]}表示引用数组中非空元素的个数

echo ========================
# ${var:-var2}若var存在且不为空，返回var，否则返回var2
echo ${name3:-"google"}
# ${var:=var2}若var存在且非空则返回var，否则将var的值设置为var2
echo ${name:="hello world!"}
# ${var:+var2}若var存在且非空则返回var2,否则返回空
echo ${name2[0]:+"goodbye world!"}
# ${var:?var2}若var存在且非空则返回var,否则返回var2,并退出脚本
echo ${name:?"no var named name"}


echo ========================
# 模式匹配
# ${var#pattern}如
# 果pattern匹配var
# 头部，则删除最短匹配部分，返回剩余部分，var不变
echo 
echo '''${filepath#/*/}'''
filepath=/home/singlepig/workspace/aa.bb.py
echo filepath=/home/singlepig/workspace/aa.py
echo ${filepath#/*/}
echo $filepath

# ${var##pattern}若
# pattern匹配var头部则删除最长匹配，返回剩余部分，var不变
echo 
echo '''${filepath##/*/}'''
echo ${filepath##/*/}
echo $filepath

# ${var%pattern}若匹配尾部则删除最短匹配部分返回剩余var不变
echo 
echo '''${filepath%*}'''
echo ${filepath%.*}
echo $filepath

# ${var%%pattern}若匹配尾部则删除最长匹配部分返回剩余var不变
echo 
echo '''${filepath%%*}'''
echo ${filepath%%.*}
echo $filepath

# ${var/pattern/string}或${var//pattern/string}
# 若pattern匹配var
# 的某个子串，则将var的最长匹配部分替换为string，
# 并返回替换后的串
# ，var不变。若pattern以#开头，意为必须匹配var首部;以%开头则必须匹配
# 尾部。若string为空，匹配部分会被删除
echo 
echo '''${filepath/singlepig/gys}'''
echo ${filepath/singlepig/gys}
echo path=$PATH
echo -e ${PATH//:\/n}
echo -e ${PATH//:/"\n"}

