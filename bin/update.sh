#!/bin/bash

cd ~/tsystem
apt=`command -v apt`
if [ "$apt" != "" ]; then
  sudo apt install -y git
fi
yum=`command -v yum`
if [ "$yum" != "" ]; then
  sudo yum install -y git
fi
ssh-add -D
cp id_github id_github.pub ~/.ssh
cp sshconfig ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
ssh-add ~/.ssh/id_github
git pull origin master
