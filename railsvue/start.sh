#!/bin/sh
set -x

cd /home/vagrant/vuedemo
## 启动vue的编译过程
nohup bin/webpack-dev-server &>vue.log &
## 等待vue编译完成
sleep 10
#
## 启动rails服务器
nohup rails s &>rails.log &

## 等rails启动
sleep 20

#
## 尝试访问服务
http http://localhost:3000/hello/say_hello
