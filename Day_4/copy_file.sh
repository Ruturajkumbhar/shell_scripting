#!/bin/bash

cp app.log backup/

if [ $? -eq 0 ]; then
  echo "File copied successfully"
else
  echo "Copy failed"
fi

