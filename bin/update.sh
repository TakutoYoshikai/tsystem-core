#!/bin/bash

cd ~/tsystem
sudo apt-get install -y git
ssh-add -D
cp id_github id_github.pub ~/.ssh
cp gitconfig ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
ssh-add ~/.ssh/id_github
git pull origin master
