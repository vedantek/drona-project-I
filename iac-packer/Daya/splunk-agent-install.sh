#!/bin/bash
set -e
#getting splunkforwarder package
wget -O splunkforwarder-8.0.5-a1a6394cc5ae-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.0.5&product=universalforwarder&filename=splunkforwarder-8.0.5-a1a6394cc5ae-linux-2.6-amd64.deb&wget=true'
sudo apt install ./splunkforwarder-8.0.5-a1a6394cc5ae-linux-2.6-amd64.deb
#sudo chmod o+rwx /opt/splunkforwarder
#cd /opt/splunkforwarder/bin/
#sudo ./splunk start
#sudo ./splunk status

