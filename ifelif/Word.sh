#!/bin/bash -x

read -p "Enter a single digit number" number

if [ $number -eq 0 ]
then
	printf "Zero"
elif [ $number -eq 1 ]
then
	printf "One"
elif [ $number -eq 2 ]
then
	printf "Two"
elif [ $number -eq 3 ]
then
	printf "Three"
elif [ $number -eq 4 ]
then
	printf "Four"
elif [ $number -eq 5 ]
then
	printf "Five"
elif [ $number -eq 6 ]
then
	printf "Six"
elif [ $number -eq 7 ]
then
	printf "Seven"
elif [ $number -eq 8 ]
then
	printf "Eight"
elif [ $number -eq 9 ]
then
	printf "Nine"
else
	printf "Wrong input"
fi
