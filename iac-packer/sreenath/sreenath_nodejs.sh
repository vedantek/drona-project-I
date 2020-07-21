#!/bin/bash
set -e

echo "------------ Install NodeJS--------------"

#Insall apt update
sudo apt-get update

#Install NodeJS
sudo apt-get install nodejs

#Fix broken dependencies
sudo apt-get install -f

#Try Installing NodeJS again
sudo apt-get install nodejs

#Check the NodeJS Version
node –v

#Install npm
npm –version