#!/usr/bin/env bash
set -ex

wget https://releases.threema.ch/web-electron/v1/release/Threema-Latest.deb
yes | dpkg -i Threema-Latest.deb