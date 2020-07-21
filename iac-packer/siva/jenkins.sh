#!/bin/bash
sudo apt install default-jre -y
sudo apt-get update
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get install jenkins -y
sudo apt-get update
service jenkins enable
service jenkins start
