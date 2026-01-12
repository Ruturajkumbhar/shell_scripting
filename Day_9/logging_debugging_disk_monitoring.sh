#!/bin/bash

LOG_FILE="/var/log/disk_check.log"
THRESHOLD=80

set -x   # Enable debugging

DATE=$(date "+%Y-%m-%d %H:%M:%S")
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "$DATE - Disk usage: ${DISK_USAGE}%" >> $LOG_FILE

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
  echo "$DATE - WARNING: Disk usage above ${THRESHOLD}%" >> $LOG_FILE
fi

set +x   # Disable debugging

