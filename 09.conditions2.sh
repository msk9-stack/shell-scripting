#!/bin/bash

VALUE=$1

echo "enter the value:"

read VALUE

if [ $(($VALUE % 2)) -eq 0 ]; then
    echo "the value $VALUE is even"
else
    echo "the value $VALUE is odd"
fi


