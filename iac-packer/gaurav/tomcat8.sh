#!/bin/bash
set -e

echo "------------ Install Tomcat8 --------------"

sudo apt-get update
sudo apt-get install default-jre* -y
sudo apt-get install tomcat8 -y

