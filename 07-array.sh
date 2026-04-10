#!/bin/bash

NAME1=kohli
NAME2=rohith
NAME3=shreyas

NAMES=($NAME1 $NAME2 $NAME3)

echo "names of the players are: ${NAMES[@]}"

echo "3rd name of the player is: ${NAMES[3]}"

