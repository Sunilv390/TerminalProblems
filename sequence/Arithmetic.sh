#!/bin/bash -x

#USERINPUT
read -p "Enter number " number1
read -p "Enter number " number2
read -p "Enter number " number3

#ARITHMETIC OPERATIONS
operation=$(($number1+$number2*$number3))
operation1=$(($number1%$number2+$number3))
operation2=$(($number3+$number1/$number2))
operation3=$(($number1*$number2+$number3))
echo "Results are  $opeartion $operation1 $operation2 $operation3 "
