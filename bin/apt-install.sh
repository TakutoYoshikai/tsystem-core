#!/bin/bash

cd `dirname $0`
cd ..
sudo apt update -y
sudo apt upgrade -y

sudo apt install -y `cat apt.txt`
