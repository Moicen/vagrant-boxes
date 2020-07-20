#!/bin/sh
set -x
sudo dnf install -y podman httpie

sudo podman pull registry.hub.docker.com/library/nginx
sudo podman run --name my-nginx -d -p 80:80 nginx
sudo podman ps
http localhost | head
sudo podman stop my-nginx