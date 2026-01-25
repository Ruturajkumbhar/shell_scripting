#!/bin/bash

log_file="/var/log/myapp/app.log"

echo "Checking log file..."

if [ ! -f "$log_file" ]; then
  echo "ERROR: Log file not found at $log_file"
  exit 1
fi

echo "Log file found. Counting ERROR entries..."

grep "ERROR" "$log_file" | cut -d " " -f 1 | sort | uniq -c

echo "Done."
