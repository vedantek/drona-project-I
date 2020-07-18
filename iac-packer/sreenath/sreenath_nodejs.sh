#!/bin/bash
set -e

echo "------------ Install NodeJS--------------"


#Install NodeJS
sudo apt install nodejs


#Check the NodeJS Version
node –version

#Install npm
sudo apt install npm
npm –version