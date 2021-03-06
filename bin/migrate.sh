#!/bin/bash

cd ~/tsystem

apt=`command -v apt`
if [ "$apt" != "" ]; then
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
cp bashrc.txt ~/.bashrc
cd ~/tsystem/bin
./cron.sh
