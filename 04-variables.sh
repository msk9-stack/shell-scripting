#!/bin/bash

#Total duration of the task: 

START_TIME=$(date +%s)

sleep 5

END_TIME=$(date +%s)

TOTAL_DURATION=$(($END_TIME - $START_TIME))

echo "Task duration: $TOTAL_DURATION seconds" 

