#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
	echo "ERROR:: run this script as root user"
	exit 1
fi

VALIDATION(){
if [ $1 -ne 0 ]; then
	echo "ERROR:: script failed $2"
	exit 1
else
	echo "SUCCESS:: installed successfully $2"
fi
		
dnf remove mysql -y
VAKIDATION $? "mysql"

dnf remove python3 -y
VALIDATION $? "python3"				
