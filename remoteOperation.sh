#!/bin/bash

#变量定义
ip_array=("hn.future.ccapp.wang")
user="root"
remote_cmd="service apache2 restart"

#本地通过ssh执行远程服务器的脚本
for ip in ${ip_array[*]}
do
ssh $user@$ip $remote_cmd
done