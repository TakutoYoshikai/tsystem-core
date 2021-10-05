#!/bin/bash

brew=`command -v brew`
apt=`command -v apt`
if [ "$brew" != "" ]; then
  cd `dirname $0`
  cd ..
  brew update
  brew upgrade
  brew install `cat package.txt`
  exit
fi

if [ "`uname`" != "Darwin" -a "$apt" != "" ]; then
  cd `dirname $0`
  cd ..
  sudo apt update -y
  sudo apt upgrade -y

  sudo apt install -y `cat package.txt` python python3
  exit
fi
yum=`command -v yum`
if [ "$yum" != "" ]; then
  cd `dirname $0`
  cd ..
  sudo yum update -y

  sudo yum install -y `cat package.txt` python python3
  exit
fi
