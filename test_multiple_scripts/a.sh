#!/bin/sh
set -x
sed -i 's/sjc.edge.kernel.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
apk add bash
sudo su - vagrant -c '/home/vagrant/b.sh'