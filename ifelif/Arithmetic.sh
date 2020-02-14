#!/bin/bash -x

#USER INPUT
read -p "Enter a number" number1
read -p "Enter a number" number2
read -p "Enter a number" number3

#ARITHMETIC OPEARTIONS
operation1=$(($number1+$number2*$number3))
operation2=$(($number1%$number2+$number3))
operation3=$(($number3+$number1/$number2))
operation4=$(($number1*$number2+$number3))

#CHECKS
if [ $operation1 -ge $operation2 -a $operation1 -ge $operation3 -a $operation1 -ge $operation4 ]
then
	printf "$operation1 is Maximum"
elif [ $operation2 -ge $operation3 -a $operation2 -ge $operation4 -a $operation2 -ge $operation1 ]
then
	printf "$operation2 is Maximum"
elif [ $operation3 -ge $operation4 -a $operation3 -ge $operation1 -a $operation3 -ge $operation2 ]
then
	printf "$operation3 is Maximum"
else
	printf "$operation4 is Maximum"
fi

if [ $operation1 -le $operation2 -a $operation1 -le $operation3 -a $operation1 -le $operation4 ]
then
	printf "$operation1 is Minimum"
elif [ $operation2 -le $operation3 -a $operation2 -le $operation4 -a $operation2 -le $operation1 ]
then
	printf "$operation2 is Minimum"
elif [ $operation3 -le $operation4 -a $operation3 -le $operation1 -a $operation3 -le $operation2 ]
then
	printf "$operation3 is Minimum"
else
	printf "$operation4 is Minimum"
fi
