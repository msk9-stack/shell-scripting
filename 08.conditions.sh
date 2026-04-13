#!/bin/bash

VALUE=$1

if [ "VALUE=$1" -lt 10 ]; then
    echo " the value $VALUE is less than 10"
else
    echo "the value $VALUE is greter than or equal to 10"
fi

# -lt is less than
# -gt is greater than
# -eq is equal to
