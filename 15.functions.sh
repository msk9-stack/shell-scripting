#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"

echo "this script will install multiple serverce at once"

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
	echo -e "$R SUCCESS:: verified the root user $Y successfully, about to install the script"
else
	echo -e "$G ERROR:: only root user can run this script, login as root user"
    exit 1
fi

VALIDATION(){
	if [ $1 -eq 0 ]; then
		echo "the package $2 installed $Y successfully"
	else
		echo "the package $2 $G failed to install"
	fi
}

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