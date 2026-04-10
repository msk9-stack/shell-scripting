#!/bin/bash

# Total duration of the task:

START_TIME=$(date +%s)

sleep 5

END_TIME=$(date +%s)

TOTAL_DURATION=$(($START_TIME - $END_TIME))

echo "today's date is: $DATE" 
