#!/bin/bash

DISK_THRESHOLD=80
MEM_THRESHOLD=500   # in MB

# Disk usage
disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Free memory
free_mem=$(free -m | awk 'NR==2 {print $7}')

echo "Disk Usage: $disk_usage%"
echo "Free Memory: $free_mem MB"

if [ $disk_usage -gt $DISK_THRESHOLD ]; then
  echo " Disk usage is above $DISK_THRESHOLD%"
fi

if [ $free_mem -lt $MEM_THRESHOLD ]; then
  echo "Low memory alert"
fi

