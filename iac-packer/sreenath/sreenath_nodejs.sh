#!/bin/bash
set -e

echo "------------ Install NodeJS--------------"

#Insall apt update
sudo apt-get update

sudo apt-get install aptitude -y
sudo aptitude install libc-ares2 -y
sudo aptitude install libhttp-parser2.7.1 -y

#Fix broken dependencies
#sudo apt-get install -f

#Install NodeJS
sudo apt-get install nodejs -y

#Check the NodeJS Version
node –v

#Install npm
npm –version