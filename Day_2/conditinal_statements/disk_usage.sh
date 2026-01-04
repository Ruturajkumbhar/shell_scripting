#!/bin/bash

usage=$(df / | tail -1 | awk '{print $5}' |sed 's/%//')

if [[ $usage -ge 75 ]];
then
	echo "Disk usage is $usage"
	echo "Disk usage is high....."

else
	echo "Disk usage is $usage"
	echo "Disk usage is normal..."

fi
