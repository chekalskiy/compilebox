#!/bin/bash

apt update
apt install -y git upstart upstart-sysv

cd /opt
git clone https://github.com/chekalskiy/compilebox /opt/compilebox

cp /opt/compilebox/server/service_compilebox.conf /etc/init/service_compilebox.conf

service service_compilebox restart

ps aux | grep compilebox_linux