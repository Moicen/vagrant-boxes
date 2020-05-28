# 基于alpine的vagrant box

## 内容
* python3
* vim 
* nginx
* docker
* podman
* nomad
* consul
* vault

## nomad consul vault的安装

由于国内下载nomad consul vault较慢，所以需手动下载以上三个软件最新安装包到本地目录 volumes下，
分别命名为nomad.zip consul.zip vault.zip


## vagrant 相关命令

### 启动
```shell script
vagrant up

```

### provision 脚本
```shell script
vagrant provision
```

### 停止
```shell script
vagrant halt
```

### 销毁box
```shell script
vagrant destroy -f
```