#!/bin/bash
set -e

echo "------------ Install NodeJS--------------"


#Install NodeJS
sudo apt-get install nodejs


#Check the NodeJS Version
node –version

#Install npm
sudo apt-get update
npm –version