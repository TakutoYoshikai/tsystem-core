#!/bin/bash

apt=`command -v apt`
if [ "$apt" != "" ]; then
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
