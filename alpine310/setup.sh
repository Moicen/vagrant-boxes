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
sudo apk add --no-cache --update python3 vim wget curl nginx docker

sudo apk add crun --repository=https://mirrors.aliyun.com/alpine/edge/community/
sudo apk add podman --repository=https://mirrors.aliyun.com/alpine/edge/testing/

# sudo service docker restart

pip3 install -U pip
pip3 install docker

NOMAD_VERSION="0.11.2"
CONSUL_VERSION="1.7.3"
VAULT_VERSION="1.4.2"

hashicorps=("nomad" "consul" "vault")

for h in "${hashicorps[@]}"; do
    if [ ! -f /usr/bin/${h} ]; then
        echo "${h}"
        unzip /home/vagrant/data/"${h}".zip
        sudo mv "${h}" /usr/bin/
    fi
done

hashicorpDirs=("/var/lib/consul" "/etc/consul.d/" "/etc/nomad.d/" "/etc/vault.d/")

for d in "${hashicorpDirs[@]}"; do
    if [ ! -f "${d}" ]; then
        echo "${d}"
        sudo mkdir -p " ${d}"
    fi
done