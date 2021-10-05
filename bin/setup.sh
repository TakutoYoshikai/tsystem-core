#!/bin/bash

if [ "$1" = "" ]; then
  echo it needs github account name
  exit
fi

cd ~/tsystem
./bin/package-install.sh

mkdir ~/.ssh
cp id_github id_github.pub ~/.ssh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*

cd
mkdir ~/workspace
mkdir ~/tsystem-mods
source ~/tsystem/bashrc_path.txt

tbin_name=`cat ~/tsystem/tbin-name.txt`
if [ "$tbin_name" != "" ]; then
  git clone git@github.com:$1/$tbin_name.git ~/tbin
fi

echo $1 > ~/tsystem/github-id.txt


cd ~/tsystem/bin

if [ "`uname`" = "Darwin" ]; then
  ./install-homebrew.sh  
fi

./migrate.sh
