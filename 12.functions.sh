#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
	echo "ERROR:: this script needs root user to execute"
	exit 1
fi

script( "$1" -ne 0 ){
	echo "ERROR:: script failed to run $2"
	exit 1
else
	echo "SUCCESS:: installed successfully $2"
}

dnf install mysql -y
script $? "mysql"

dnf install python3 -y
script $? "python3"