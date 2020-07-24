#!/bin/bash
set -e

echo "------------ Install NodeJS--------------"

#Insall apt update
sudo apt-get update

#sudo apt-get install aptitude -y
#sudo aptitude install libc-ares2 -y
#sudo aptitude install libhttp-parser2.7.1 -y

#Fix broken dependencies
#sudo apt-get install -f

#Install NodeJS and npm
#sudo apt-get install -y curl
#curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
#sudo apt-get install -y nodejs

sudo apt-get install -y nodejs && sudo apt-get install -y npm

#Check the NodeJS Version
node –v
#npm version
npm –v