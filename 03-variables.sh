#!/bin/bash

# This script demonstrates the use of variables in shell scripting

START_TIME=$(date +%s)

echo "Start time: $(date)"

# Simulating some work (sleep for demo)
sleep 2

END_TIME=$(date +%s)

echo "End time: $(date)"

TOTAL_DURATION=$((END_TIME - START_TIME))

echo "Total duration of the script execution: ${TOTAL_DURATION} seconds"