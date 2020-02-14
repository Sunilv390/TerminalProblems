#!/bin/bash -x

#VARIABLE
factorial=1
read -p "Enter number : " number

#FACTORIAL CALCULATION
for (( counter = $number; counter>=1; counter-- ))
do
	factorial=$(($factorial*$counter))
done
echo $factorial
