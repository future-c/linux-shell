#!/bin/bash


#执行多条命令的时候每条命令要使用 分号隔开
remote_cmd="
cd /work/git/;
mkdir trcd;
cd trcd;
touch cc.txt;"
ssh root@ccapp.wang $remote_cmd
