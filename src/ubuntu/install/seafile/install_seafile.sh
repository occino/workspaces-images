#!/usr/bin/env bash
set -ex

wget https://linux-clients.seafile.com/seafile.asc -O /usr/share/keyrings/seafile-keyring.asc
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/seafile-keyring.asc] https://linux-clients.seafile.com/seafile-deb/$(lsb_release -cs)/ stable main" | tee /etc/apt/sources.list.d/seafile.list > /dev/null
apt-get update
apt-get install -y seafile-gui
