#!/bin/sh
set -x
sudo dnf install -y unzip zip curl sed httpie
source "/home/vagrant/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.7.j9-adpt
\curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm
rvm install jruby




