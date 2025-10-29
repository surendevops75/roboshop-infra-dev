#!/bin/bash

component=$1
dnf install ansible -y
#ansible-pull -U https://github.com/daws-86s/ansible-roboshop-roles-tf.git -e component=$component main.yaml
# git clone ansible-playbook
# cd ansible-playbook
# ansible-playbook -i inventory main.yaml

REPO_URL=https://github.com/surendevops75/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf


mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch ansible.log

cd $REPO_DIR

# check if ansible repo is already cloned or not

if [ -d $ANSIBLE_DIR ]; then

    cd $ANSIBLE_DIR
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

ansible-playbook -e component=$component main.yaml