#!/bin/bash

echo "this script is for installing packages with root user"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
	echo "ERROR: run this script as root user $USERID"
	exit 1
fi

dnf remove mysql -y

if [ $? -ne 0 ]; then
	echo "ERROR: script is failed to execute"
	exit 1
else 
	echo "SUCCESS: script executed successfully"
fi