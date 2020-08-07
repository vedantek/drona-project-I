# #!/bin/bash
# sudo apt-get update
# sudo apt-get install default-jre -y
# sudo apt-get update
# wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
# sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# sudo apt-get update
# sudo apt-get install jenkins -y
# sudo service start jenkins -y
# sudo service status jenkins 


set -e

echo "------------ Install NewRelic --------------"

#Create a configuration file and add your license key
echo "license_key: cb60ff5db7be50e6f092570341744c973f0dNRAL" | sudo tee -a /etc/newrelic-infra.yml

#Enable New Relic’s GPG key
curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add -

#Create the agent’s apt repo using the command for your distribution version
printf "deb [arch=amd64] http://download.newrelic.com/infrastructure_agent/linu