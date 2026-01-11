#!/bin/bash

create_directory() {
	mkdir demo

}

if ! create_directory;
then
	echo "the directory aready exists..."
	exit 1
fi


echo "This helps the script exit safely when an error is detected"


