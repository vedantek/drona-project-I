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