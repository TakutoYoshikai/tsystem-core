#!/bin/bash

cd `dirname $0`
cd ..


apt=`which apt`
if [ "$apt" != "" ]; then
  sudo apt remove -y `cat package.txt`
fi
yum=`which yum`
if [ "$yum" != "" ]; then
  sudo yum remove -y `cat package.txt`
fi
