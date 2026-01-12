#!/bin/bash

THRESHOLD=80
LOG_FILE="/var/log/disk_monitor.log"

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

DATE=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
  echo "$DATE ALERT: Disk usage is ${DISK_USAGE}% (Threshold: ${THRESHOLD}%)" >> $LOG_FILE
else
  echo "$DATE Disk usage is normal: ${DISK_USAGE}%" >> $LOG_FILE
fi

