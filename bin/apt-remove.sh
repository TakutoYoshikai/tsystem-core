#!/bin/bash

cd `dirname $0`
cd ..

sudo apt-get remove -y `cat apt.txt`
