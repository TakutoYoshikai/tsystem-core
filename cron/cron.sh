#!/bin/bash

cd `dirname $0`
cat cron.txt | crontab
