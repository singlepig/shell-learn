---
layout: post
title: '[shell]test命令'
date: 2013-12-25 16:06
comments: true
categories: [Shell]
---
# test命令
`test`命令用于测试表达式的值，以便进行控制。`test`有两种格式：
1. test 表达式
2. [ 表达式 ]
***Tips***：`[`和 `]`左右至少一个空格
当表达式为`真`时，退出状态为`0`,否则为`1` 。
```
[singlepig]@[~]$ test 1 \> 2;echo $?
1
[singlepig]@[~]$ test 3 \> 2;echo $?
0
```
***Tips***：`>`需要用转义符号`\`转义，以便区分于重定向符号。

`test`命令可以和多种系统命令运算符一起使用，这些运算符分为四类：
### 1. 文件属性测试
|参数|功能|
|:--:|:--|
|-b name|若name存在且是块设备文件，为真|
|-c name|若name存在且是字符设备文件，为真|
|-d name|若name存在且是目录文件，为真|
|-e name|若name存在，为真|
|-f name|若name存在且是普通文件，为真|
|-h name|若name存在且是符号链接文件，为真|
|-p name|若name存在且是管道文件，为真|
|-r name|若name存在且是用户可读的文件，为真|
|-w name|若name存在且是用户可写的文件，为真|
|-x name|若name存在且是用户可执行的文件，为真|
|-O name|若name存在且当前用户是文件拥有者，为真|
|-S name|若name存在且是socket文件，为真|
|-s name|若name存在且文件长度大于0，为真|
|name1 -nt name2|若name1比name2新，为真|
|name1 -ot name2|若name1比name2旧，为真|
```
[singlepig]@[~]$ test -f ~/.bashrc ;echo $?
0
[singlepig]@[~]$ test -p ~/.bashrc ;echo $?
1
[singlepig]@[~]$ test -d ~/.bashrc ;echo $?
1
[singlepig]@[~]$ test -d /mnt ;echo $?
0
[singlepig]@[~]$ test -r ~/.bashrc ;echo $?
0
[singlepig]@[~]$ test -O ~/.bashrc ;echo $?
0
[singlepig]@[~]$ test -o ~/.bashrc ;echo $?
1
```
### 2. 字符串测试
***Tips***:双目运算符两侧至少各有一个空格

|参数|功能|
|:--:|:--|
|-z str|若str长度为0,为真|
|-n str|若str长度大于0,为真|
|str|若str不是空字符串，为真|
|s1 = s2|若s1等于s2,为真|
|s1 ！= s2|若s1不等于s2,为真|
|s1 \< s2|若按字典顺序s1在s2之前,为真|
|s1 \> s2|若按字典顺序s1在s2之后,为真|
***Tips***:字符串比较按照ascii码值的大小比较
```
[singlepig]@[~]$ test -n abc;echo $?
0
[singlepig]@[~]$ test -z abc;echo $?
1
[singlepig]@[~]$ test abc;echo $?
0
[singlepig]@[~]$ test abc = abd;echo $?
1
[singlepig]@[~]$ test abc = abc;echo $?
0
[singlepig]@[~]$ test abc \> abd;echo $?
1
[singlepig]@[~]$ test c \> d;echo $?
1
[singlepig]@[~]$ test d \> c;echo $?
0
```

### 3. 数值测试

|参数|功能|
|:--:|:--|
|n1 -eq n2|若n1 = n2,为真(eq=equal)|
|n1 -ne n2|若n1 != n2,为真(ne=not equa)|
|n1 -lt n2|若n1 < n2,为真(lt=less than)|
|n1 -le n2|若n1 <= n2,为真(less than or equal)|
|n1 -gt n2|若n1 > n2,为真(great than)|
|n1 -ge n2|若n1 >= n2,为真(great than or equal)|


### 4. 逻辑关系

|参数|功能|
|:--:|:--|
|!exp|若exp为假，则结果为真|
|exp1 -a exp2|当exp1和exp2都为真时，为真|
|exp1 -o exp2|有一个为真，则为真|
|\ (exp\ )|使()中的exp作为一个整体，[ \ ("$a" -ge 0\ ) -a \ ("$b" -le 100\ ) ]|
```
[singlepig]@[~]$ test \( 3 -ge 0 \) -a \( 1 -le 100 \);echo $?
0
[singlepig]@[~]$ [ \( 3 -ge 0 \) -a \( 1 -le 100 \) ];echo $?
0
```
***Tips***:逻辑测试运算符用于链接测试表达式，逻辑操作`&&`、`||`用于连接两个命令。
```
[singlepig]@[~]$ [ \( 3 -ge 0 \) ] && [ \( 111 -le 100 \) ];echo $?
1
[singlepig]@[~]$ [ \( 3 -ge 0 \) ] || [ \( 111 -le 100 \) ];echo $?
0
```