#!/bin/bash

set -e

apt update
apt install -y dos2unix
apt install -y sudo
apt install -y iptables
apt install -y nano
apt install -y net-tools
apt install -y ncat
apt install -y wget
apt install -y bsdgames
wget https://www.vpn.net/installers/logmein-hamachi-2.1.0.203-x64.tgz
tar -xvzf logmein-hamachi-2.1.0.203-x64.tgz
dos2unix *
./fixcarriage.bash
