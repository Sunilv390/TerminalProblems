#!/bin/bash -x

#CHECKS NUMBER IN DAYS
read -p "Enter a number: " number
if [ $number -eq 1 ]
then
	printf "$number is Monday"
elif [ $number -eq 2 ]
then
	printf "$number is Tuesday"
elif [ $number -eq 3 ]
then
	printf "$number is Wednesday"
elif [ $number -eq 4 ]
then
	printf "$number is Thursday"
elif [ $number -eq 5 ]
then
	printf "$number is Friday"
elif [ $number -eq 6 ]
then
	printf "$number is Saturday"
elif [ $number -eq 7 ]
then
	printf "$number is Sunday"
else
	printf "No such day"
fi
