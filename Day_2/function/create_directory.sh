#!/bin/bash

read -p "Enter the file name:" file_name

make_direct(){
	if [[ -d "$1" ]]
	then
		echo "file alrady exist"
	else
		mkdir "$1"
		echo "Directory Created:$1"
	fi
}

make_direct "$file_name"
