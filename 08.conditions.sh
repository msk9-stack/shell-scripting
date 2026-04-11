#!/bin/bash

NUMBER=$1

# I want to compare two numbers, lesse than or greater tham

if [ $NUMBER -lt 1.5 ]; then
    echo "number is $NUMBER less than 1.5"
else
    echo "number is $NUMBER greater than 1.5"
fi

# -lt is less than
# -gt is greater than
# -eq is equal to