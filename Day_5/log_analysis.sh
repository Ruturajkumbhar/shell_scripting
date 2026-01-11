#!/bin/bash

log_file="/var/log/myapp/app.log"

if [ ! -f "$log_file" ]; then
  echo " Log file not found: $log_file"
  exit 1
fi

grep "ERROR" "$log_file" |
cut -d " " -f 1 |
sort |
uniq -c

