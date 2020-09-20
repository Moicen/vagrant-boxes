#!/bin/sh
set -x
sudo dnf install -y podman httpie podman-compose
touch docker-compose.yml
cat >docker-compose.yml <<EOF
version: "3"
services:
  web:
    image: registry.hub.docker.com/library/nginx
    ports:
      - "8080:80"
EOF
# 设置podman-compose的infra_image，默认是从k8s.gcr读取，改成dockerhub源
sudo cat >/etc/containers/libpod.conf <<EOF
# Default infra (pause) image name for pod infra containers
infra_image = "mirrorgooglecontainers/pause:3.1"
EOF
echo "use podman-compose..."
sudo podman-compose up -d
sudo podman ps
http localhost:8080 | head
sudo podman-compose down

echo "use podman..."
sudo podman pull registry.hub.docker.com/library/nginx
sudo podman run --name my-nginx -d -p 80:80 nginx
sudo podman ps
http localhost | head
sudo podman stop my-nginx
