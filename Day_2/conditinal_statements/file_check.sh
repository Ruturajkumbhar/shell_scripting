#!/bin/bash

read -p "Enter file name:" file_name

if [ -f "$file_name" ];
then 
	echo "$file_name is exist...."

else
	echo "$file_name is not exist...."
	touch "$file_name"
	echo "$file_name is created......"

fi


