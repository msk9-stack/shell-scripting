#!/bin/bash

echo "this script will install multiple serverce at once"

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
	echo "SUCCESS:: verified the root user successfully, about to install the script"
else
	echo "ERROR:: only root user can run this script, login as root user"
    exit 1
fi

VALIDATION(){
	if [ $1 -eq 0 ]; then
		echo "the package $2 installed successfully"
	else
		echo "the package $2 failed to install"
	fi
}

echo "instaliing mysql......"

dnf install mysqll -y

VALIDATION $? "mysql"

echo "################################################################"

echo "instaliing python3......"

dnf install python3 -y

VALIDATION $? "python3"

echo "################################################################"

echo "instaliing nginx......"

dnf install nginx -y

VALIDATION $? "nginx"

echo "################################################################"