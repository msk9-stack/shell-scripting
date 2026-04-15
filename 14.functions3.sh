#!/bin/bash

echo "this script will install multiple packages at once"

echo "#packages will be installed using dnf package manager"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
	echo "ERROR: only root user can istall these packages"
	echo "Please login as root user"
	exit 1
fi

script(){
	if [ "$1" -ne 0 ]; then
		echo "ERROR: script failed to execute $2"
	else
		echo "SUCCESS: pakages installed successfully $2"
    fi
}


echo "installing nginx...................."
dnf install nginx -y
script $? "nginx"

echo "installing mysql..................."
dnf install mysql -y
script $? "mysql"

ech "installing python3..................."
dnf install python3 -y
script $? "python3"