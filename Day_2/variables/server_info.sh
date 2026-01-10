#!/bin/bash

read -p "Enter your name:" admin

hostname=$(hostname)
time_info=$(uptime)


echo "------------- server info ----------------------"

echo "Admin name:$admin"
echo "server name:$hostname"
echo "server uptime:$time_info"

echo "------------------------------------------------"


