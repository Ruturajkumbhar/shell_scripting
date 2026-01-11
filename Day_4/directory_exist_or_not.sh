#!/bin/bash

dir="backup"

if [ ! -d "$dir" ]; then
  mkdir "$dir"
  echo "Directory created"
else
  echo "Directory already exists"
fi

