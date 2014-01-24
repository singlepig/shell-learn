#!/bin/bash

# use wifi as default

# 找到无线网络设备接口名存入变量wifi中
wifi='iwconfig|head -1|awk `{print $1}`'
echo "wifi interface:$wifi"
# 结合wifi名获取wifi网络主机ip地址
gw='ip addr show $wifi|head -3|tail -1|awk `{print $2}`'
echo "wifi ip:$gw"
# 假设该网段第一ip地址为网关，存入gw变量中
gw=`echo $gw|awk -F.'{printf("%s.%s.%s.1",$1,$2,$3)}'`
echo "wif gateway:$gw"
echo "set the wifi gateway as the default gw now"
# 删除默认路由，将无线网络的网关作为默认路由
route delete default
route add default gateway $gw
echo "set the wifi gateway as the default gw end"
