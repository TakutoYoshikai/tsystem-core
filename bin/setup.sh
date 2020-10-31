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
git clone git@github.com:$1/keys.git

source ~/tsystem/bashrc_tmp.txt

# .sshフォルダのgit管理
mv keys/.git keys/.gitignore keys/* $HOME/.ssh
chmod 600 $HOME/.ssh/*
rm -rf $HOME/keys

git clone git@github.com:$1/tbin-core.git ~/tbin

# その他インストール
cd ~/tsystem/bin
./migrate.sh
