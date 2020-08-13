#!/bin/sh
set -x
sudo dnf install -y bcc-tools python3-bcc
# https://github.com/draios/sysdig/wiki/How-to-Install-Sysdig-for-Linux
curl -s https://s3.amazonaws.com/download.draios.com/stable/install-sysdig | sudo bash
