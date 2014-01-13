#!/bin/bash

echo 'type in the user name:'
    read user

if grep $user /etc/passwd > /tmp/null && who | grep $user
    # 测试条件是由&&连接的2个命令
    # grep $user /etc/passwd > /tmp/null ,从/etc/passed文件中寻找$user字段，并重定向输出到文件/tmp/null
    # who | grep $user ,who命令列出当前系统已经登录的用户，管道|链接，从其中寻找是否有$user字符串

then
    echo "$user has logged in the system."
    cp /tmp/null ~/me.tmp
    rm /tmp/null
else
    echo "$user has not logged in the system."
fi
