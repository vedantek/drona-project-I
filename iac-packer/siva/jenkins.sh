#!/bin/bash
sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get update
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
sudo service start jenkins -y
sudo service status jenkins 
