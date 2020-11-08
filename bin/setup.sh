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
source ~/tsystem/bashrc_path.txt

git clone git@github.com:$1/tbin-core.git ~/tbin
echo $1 > ~/tsystem/github-id.txt

# その他インストール
cd ~/tsystem/bin
./migrate.sh
