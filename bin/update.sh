#!/bin/bash

cd ~/tsystem
apt=`which apt`
if [ "$apt" != "" ]; then
  sudo apt install -y git
fi
yum=`which yum`
if [ "$yum" != "" ]; then
  sudo yum install -y git
fi
ssh-add -D
cp id_github id_github.pub ~/.ssh
cp gitconfig ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
ssh-add ~/.ssh/id_github
git pull origin master
