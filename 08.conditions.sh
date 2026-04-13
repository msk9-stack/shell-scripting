#!/bin/bash

VALUE=$1

if [ $VALUE -lt 10 ]; then
    echo " the value $VALUE is less than 10"
elif [ $VALUE -eq 10]; then
    echo " the value $VALUE is equal o 10"
else
    echo "the value $VALUE is greter than to 10"
fi

# -lt is less than
# -gt is greater than
# -eq is equal to
