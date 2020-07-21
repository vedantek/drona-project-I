#!/bin/bash
set -e

echo "------------ Install NodeJS--------------"

#Insall apt update
sudo apt-get update

#Fix broken dependencies
#sudo apt-get install -f

#Install NodeJS
sudo apt-get install nodejs -y

#Check the NodeJS Version
node –v

#Install npm
npm –version