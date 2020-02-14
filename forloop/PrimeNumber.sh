#!/bin/bash -x

#INPUTVARIABLE
read -p "Enter any number : " number
isPrime=1

#CHECK IF ANY NUMBER DIVIDES INPUT
for (( counter=2; counter<=$number/2; counter++))
do
	if [ $(($number%$counter)) -eq 0 ]
	then
		isPrime=0
		break
	fi
done
if [ $isPrime -eq 1 ]
then
	echo "$number is a Prime Number"
else
	echo "$number is Not Prime NUmber"
fi
