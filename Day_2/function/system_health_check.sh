#!/bin/bash

check_disk() {
  echo "Disk Usage:"
  df -h | awk 'NR==1 || /\/$/'
}

check_memory() {
  echo "Memory Usage:"
  free -h
}

check_cpu() {
  echo "CPU Load:"
  uptime
}

system_health() {
  echo "=============================="
  echo "    System Health Report"
  echo "=============================="
  check_disk
  check_memory
  check_cpu
}

system_health

