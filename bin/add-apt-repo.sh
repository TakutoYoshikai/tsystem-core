#!/bin/bash

cd ~/tsystem
keys=($(cat keys.txt))
for key in "${keys[@]}"
do
  if [ "`cat ./keys-downloaded.txt | grep $key`" = "" ]; then
    echo "download key $key"
    curl -fsSL $key | sudo apt-key add -
    echo $key >> ./keys-downloaded.txt
  fi
done

repos=($(cat repos.txt))
for repo in "${repos[@]}"
do
  if [ "`cat ./repos-added.txt | grep $repo`" = "" ]; then
    echo "add apt repository $repo"
    sudo apt-add-repository $repo
    echo $repo >> ./repos-added.txt
  fi
done

sudo apt update
