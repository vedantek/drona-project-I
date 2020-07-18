#!/bin/bash

set -e

sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c "echo 'deb https://apt.datadoghq.com/ stable 7' > /etc/apt/sources.list.d/datadog.list"
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 A2923DFF56EDA6E76E55E492D3A80E30382E94DE
sudo apt-get update
sudo apt-get install datadog-agent
sudo sh -c "sed 's/api_key:.*/api_key: /' /etc/datadog-agent/datadog.yaml.example > /etc/datadog-agent/datadog.yaml"
sudo systemctl restart datadog-agent.service
sudo service datadog-agent start


echo "------------ Install NewRelic --------------"

#Create a configuration file and add your license key
echo "license_key: " | sudo tee -a /etc/newrelic-infra.yml

#Enable New Relic’s GPG key
curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add -

#Create the agent’s apt repo using the command for your distribution version
printf "deb [arch=amd64] http://download.newrelic.com/infrastructure_agent/linux/apt bionic main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list

#Update your apt cache
sudo apt-get update

#Run the install script
sudo apt-get install newrelic-infra -y