#!/bin/bash

check_root() {
  if [ "$EUID" -eq 0 ]; then
    return 0
  else
    return 1
  fi
}

check_root

if [ $? -eq 0 ]; then
  echo "Running as root"
else
  echo "Not running as root"
fi

