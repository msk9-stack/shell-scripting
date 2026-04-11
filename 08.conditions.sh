#!/bin/bash

NUMBER=$10

# I want to compare two numbers, lesse than or greater tham

if [ $NUMBER -lt 2 ]; then
    echo "number is $NUMBER less than 2"
else
    echo "number is $NUMBER greater than 2"
fi

# -lt is less than
# -gt is greater than
# -eq is equal to