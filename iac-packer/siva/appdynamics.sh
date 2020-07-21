#!/bin/bash
platform-admin.sh create-platform -- <platform name> --installation-dir <platform installation directory>
platform-admin.sh add-credential --credential-name <name> --type <ssh> --user-name <username> --ssh-key-file <file path to the key file>
platform-admin.sh add-hosts --hosts remotehost --credential <credential name>
platform-admin.sh submit-job --service controller --job install --args controllerPrimaryHost=<remotehost> controllerAdminUsername=<user1> controllerAdminPassword=<password> controllerRootUserPassword=<rootpassword> mysqlRootPassword=<dbrootpassword>
platform-admin.sh list-job-parameters --job install --service controller
http://<application_server_host_name>:<http-listener-port>/controller/rest/serverstatus
bin/platform-admin.sh submit-job --platform-name <name_of_the_platform> --job diagnosis --service controller
sudo apt-get update -y
sudo apt-get install appdynamics -y
