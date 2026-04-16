#!/bin/bash

echo "this script will install multiple serverce at once"

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
	echo "SUCCESS:: verified the root user successfully, about to install the script"
	exit 0
else
	echo "ERROR:: only root user can run this script, login as root user"
fi

VALIDATION(){
	if [ $1 -eq 0 ]; then
		echo "the package $2 installed successfully"
		exit 0
	else
		echo "the package $2 failed to install"
		exit 1
}	fi

echo "instaliing mysql......"

dnf install mysql -y

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