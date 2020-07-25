#!/bin/bash
set -e

echo "------------ Install NewRelic --------------"

#Create a configuration file and add your license key
echo "license_key: cb60ff5db7be50e6f092570341744c973f0dNRAL" | sudo tee -a /etc/newrelic-infra.yml

#Enable New Relic’s GPG key
curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add -

#Create the agent’s apt repo using the command for your distribution version
printf "deb [arch=amd64] http://download.newrelic.com/infrastructure_agent/linux/apt bionic main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list

#Update your apt cache
sudo apt-get update

#Run the install script
sudo apt-get install newrelic-infra -y

sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get updatewget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins -y
sudo systemctl status jenkins