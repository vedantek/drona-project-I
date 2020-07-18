#!/bin/bash

set -e

sudo apt-get update

sudo apt install default-jdk -y

sudo useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat

wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz -P /tmp/

sudo tar xf /tmp/apache-tomcat-9*.tar.gz -C /opt/tomcat

sudo ln -s /opt/tomcat/apache-tomcat-9.0.27 /opt/tomcat/latest

sudo chown -RH tomcat: /opt/tomcat/latest

sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

sudo systemctl daemon-reload

sudo systemctl start tomcat

sudo systemctl status tomcat

sudo systemctl enable tomcat

sudo ufw allow 8080/tcp

sudo systemctl restart tomcat

#test the connection 
