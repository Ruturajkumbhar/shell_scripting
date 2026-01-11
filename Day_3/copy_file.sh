#!/bin/bash

cp file1.txt /backup/

if [ $? -ne 0 ]; then
  echo " Copy failed"
else
  echo "Copy successful"
fi

