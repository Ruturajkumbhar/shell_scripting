#!/bin/bash

read -p "Enter file name: " filename

if [ -f "$filename" ]; then
  echo " File exists. Reading content..."
  cat "$filename"
else
  echo " Error: File does not exist"
  exit 1
fi

