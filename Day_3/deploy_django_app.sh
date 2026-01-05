#!/bin/bash

<< comment 

deploy the django application
and handle the code for errors

comment

code_clone() {

	echo " Cloning the Django app...."
	git clone https://github.com/LondheShubham153/django-notes-app.git || return 1

}

install_requirements() {
	echo "installing dependencies....."
	sudo yum install docker -y
	sudo yum install nginx -y
}

requierd_restart() {
	sudo usermod -aG docker $USER
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 --name notes-app-container notes-app:latest
}


echo "============ Deployment Started =================="

if ! code_clone;
then 
	echo "the code directory already exist..."
	cd django-notes-app
fi

if ! install_requirements;
then 
	echo "Installation Failed...."
	exit 1
fi

if ! requierd_restart;
then
	echo "system fault identified"
	exit 1
fi

deploy

echo "================== Deployment Done ========================"
