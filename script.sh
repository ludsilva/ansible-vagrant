#!/bin/bash

sudo su -
apt-get update && apt-get upgrade -y
apt install ansible -y
ansible-playbook --connection=local /ansible/playbook.yml

# apt install -y software-properties-common
# add-apt-repository --yes --update ppa:ansible/ansible