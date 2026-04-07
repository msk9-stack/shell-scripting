#!/bin/bash

# This script demonstrates the use of variables in shell scripting

START-TIME=$(date)

echo "This is the start time : ${START-TIME} from now"

# 10 scripts are executed here

END-TIME=$(date)
echo "This is the end time : ${END-TIME} till now"

TOTAL-DURATION=$((END-TIME - START-TIME))

echo "Total duration of the script execution : ${TOTAL-DURATION} in total"