#!/bin/sh
set -x

# 安装基础的依赖包
sudo dnf install -y unzip zip curl sed httpie ruby ruby-devel g++ nodejs redhat-rpm-config zlib-devel git make rpm-build ruby-devel sqlite-devel automake libtool htop lsof

curl -L https://www.npmjs.com/install.sh | sh
sudo npm install -g cnpm
sudo cnpm install -g yarn

# 设置ruby的镜像源
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org https://gems.ruby-china.com

# 安装rails
gem install rails

# 创建rails项目，并且使用vue模块
cd /home/vagrant/
rails new vuedemo --webpack=vue

# 生成基础的controller
cd /home/vagrant/vuedemo
rails g controller Hello say_hello

cat > /home/vagrant/vuedemo/app/views/hello/say_hello.html.erb <<EOF
<%= javascript_pack_tag 'hello_vue' %>
<div id='hello'>
  <app></app>
</div>
EOF

chown -R vagrant:vagrant /home/vagrant


# todo: 下面的过程要封装进一个运行脚本，不在编译流程里
#cd /home/vagrant/vuedemo
## 启动vue的编译过程
#nohup bin/webpack-dev-server &>vue.log &
## 等待vue编译完成
#sleep 20
#
## 启动rails服务器
#nohup rails s &>rails.log &
## 等待20秒，等rails启动，因为使用的是jruby，jvm的warmup需要一定时间
#sleep 20
#
## 尝试访问服务
#http http://localhost:3000/hello/say_hello




