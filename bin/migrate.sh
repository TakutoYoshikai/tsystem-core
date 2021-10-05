#!/bin/bash

cd ~/tsystem

apt=`command -v apt`
if [ "`uname`" != "Darwin" -a "$apt" != "" ]; then
  ./bin/add-apt-repo.sh
fi

./bin/package-install.sh

cd migration
files=($(ls))
for f in "${files[@]}"
do
  if [ "`cat ../migrated.txt | grep $f`" = "" ]; then
    echo "execute $f"
    bash $f 
    echo $f >> ../migrated.txt
  fi
done
cd ~/tsystem
if [ "`uname`" = "Darwin" ]; then
  cp bashrc.txt ~/.bash_profile
else
  cp bashrc.txt ~/.bashrc
fi
cd ~/tsystem/bin
