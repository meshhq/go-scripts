#!/bin/sh

apt-get update -y
apt-get install -y openssh-client wget software-properties-common
add-apt-repository "deb http://security.debian.org/debian-security wheezy/updates main"
wget -qO - https://packages.confluent.io/deb/3.3/archive.key | apt-key add -
add-apt-repository "deb [arch=amd64] http://packages.confluent.io/deb/3.3 stable main"
apt-get update -y
apt-get install -y libssl1.0.0 librdkafka1 librdkafka-dev
dpkg -l | grep librdkafka
apt-get install -y daemontools
