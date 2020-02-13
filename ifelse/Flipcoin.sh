#!/bin/bash -x

#VARIABLE
randomValue=$((RANDOM%2))

if [ $randomValue -eq 1 ]
then
	echo "Random value is Head"
else
	echo "Random value is Tail"
fi
