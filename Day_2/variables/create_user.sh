#!/bin/bash

read -p "Enter username:" username

echo "you entered the username $username"

echo "hello $username....."

sudo useradd -m $username

echo "new user added......"
