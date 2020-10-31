#!/bin/bash

cd `dirname $0`
cd ..


apt=`command -v apt`
if [ "$apt" != "" ]; then
  sudo apt remove -y `cat package.txt`
fi
yum=`command -v yum`
if [ "$yum" != "" ]; then
  sudo yum remove -y `cat package.txt`
fi
