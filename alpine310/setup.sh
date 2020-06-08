#!/bin/bash

sudo mkdir -p /home/vagrant/.pip/
sudo mkdir -p /root/.pip
sudo mkdir -p /etc/docker/

sudo cp /home/vagrant/data/pip.conf /home/vagrant/.pip/
sudo cp /home/vagrant/data/pip.conf /root/.pip/
sudo cp /home/vagrant/data/daemon.json /etc/docker/daemon.json

sudo sed -i 's/sjc.edge.kernel.org/mirrors.aliyun.com/g' /etc/apk/repositories

sudo apk update
sudo apk add --no-cache --virtual .build-deps g++ python3-dev libffi-dev openssl-dev
sudo apk add --no-cache --update python3 vim wget curl nginx docker openssh

sudo apk add crun  --repository=https://mirrors.aliyun.com/alpine/edge/community/
sudo apk add podman nomad consul vault --repository=https://mirrors.aliyun.com/alpine/edge/testing/

# sudo service docker restart
pip3 install -U pip
pip3 install docker

hashicorpDirs=("/etc/consul.d/" "/etc/nomad.d/" "/etc/vault.d/")

for d in "${hashicorpDirs[@]}"; do
    if [ ! -d "${d}" ]; then
        echo "make dir ${d}"
        sudo mkdir -p "${d}"
    fi
done