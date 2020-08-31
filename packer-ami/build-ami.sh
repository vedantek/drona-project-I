#!/bin/bash

packer build bastion-ami.json 

packer build ansible-control-ami.json

packer build mongodb-ami.json

packer build web-ami.json

packer build service-ami.json