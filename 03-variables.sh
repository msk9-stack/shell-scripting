#!/bin/bash

# This script demonstrates the use of variables in shell scripting

START_TIME=date

echo "This is the start time : ${START_TIME} from now"

# 10 scripts are executed here

END_TIME=date

echo "This is the end time : ${END_TIME} till now"

TOTAL_DURATION=$((END_TIME - START_TIME))

echo "Total duration of the script execution : ${TOTAL_DURATION} in total"