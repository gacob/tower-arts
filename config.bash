#!/bin/bash

set -e

clear

./fixcarriage.bash

sleep 2

clear

sudo iptables -I INPUT -i docker0 -j ACCEPT

sleep 1

cd logmein-hamachi-2.1.0.203-x64

./install.sh

sleep 3

hamachi login

sleep 1

hamachi set-nick proyectodocker

sleep 1

hamachi create dolordemuelas3030 juiciofinal

sleep 1

hamachi

sleep 2

ifconfig


