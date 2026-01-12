#!/bin/bash

process="ssh"

if pgrep $process > /dev/null
then
  echo "$process service is running"
else
  echo "$process service is NOT running"
fi

