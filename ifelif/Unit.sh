#!/bin/bash -x

#USERINPUT
read -p "Enter a number" number

#CHECKS UNIT PLACE
if [ $number -gt 0 -a $number -lt 10 ]
then
	printf "$number is Unit"
elif [ $number -gt 9 -a $number -lt 100 ]
then
	printf "$number is Ten's"
elif [ $number -gt 99 -a $number -lt 1000 ]
then
	printf "$number is Hundred"
elif [ $number -gt 999 -a $number -lt 10000 ]
then
	printf "$number is Thousand"
else
	printf "Invalid number"
fi
