#!/bin/bash

cd ~/tsystem

cd migration
files=($(ls))
for f in "${files[@]}"
do
  if [ "`cat ../migrated.txt | grep $f`" = "" ]; then
    echo "$f"
  fi
done
