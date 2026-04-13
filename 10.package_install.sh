#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]; then
    echo " ERROR:: login as root user $USER"
fi

dnf remove mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: failed to install mysql"
else
    echo "SUCCESS:: mysql installed"
fi