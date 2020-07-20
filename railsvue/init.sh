#!/bin/sh
set -x

# 安装基础的依赖包
sudo dnf install -y unzip zip curl sed httpie

# 通过sdkman安装java
# jruby目前跟rails6的集成还不太稳定
#curl -s "https://get.sdkman.io" | bash
#source "/home/vagrant/.sdkman/bin/sdkman-init.sh"
#sdk install java 11.0.7.j9-adpt

# 安装rvm
\curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm
# 设置镜像
echo "ruby_url=https://cache.ruby-china.com/pub/ruby" > ~/.rvm/user/db

# 安装jruby
# jruby目前跟rails6的集成还不太稳定
# rvm install jruby

# 安装普通ruby
rvm install ruby

# 安装npm和node和yarn
sudo dnf install -y nodejs
curl -L https://www.npmjs.com/install.sh | sh
sudo npm install -g cnpm
sudo cnpm install -g yarn

# 设置ruby的镜像源
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org https://gems.ruby-china.com

# 安装rails和相关依赖
sudo dnf install -y g++

# 安装jruby的时候rails已经自带了
# gem install rails

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

cd /home/vagrant/vuedemo
# 启动vue的编译过程
nohup bin/webpack-dev-server &>vue.log &
# 等待vue编译完成
sleep 20

# 启动rails服务器
nohup rails s &>rails.log &
# 等待20秒，等rails启动，因为使用的是jruby，jvm的warmup需要一定时间
sleep 20





