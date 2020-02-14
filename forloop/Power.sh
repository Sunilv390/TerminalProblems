#!/bin/bash -x

#VARIABLE
sum=1

#FINDING POWER
read -p "Enter a number" number
for(( index=0; index<=number; index++))
do
	sum=$(($sum*2))
	echo "Power is $sum"
done
