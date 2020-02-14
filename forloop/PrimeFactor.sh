#!/bin/bash -x

#VARIABLE
flag=0
read -p "Enter the number : " number
for (( counter=1; $((counter*counter))<=$number; counter++ ))
do
	if [ $(($number%$counter)) -eq 0 ]
	then
		isPrime=0
#CHECK IF THE FACTOR IS PRIME
		for (( index=2; index<=$(($counter/2)); index++ ))
		do
			if [ $(($counter%$index)) -eq 0 ]
			then
				isPrime=1
				break
			fi
		done
	if [ $isPrime -eq 0 -a $counter -ne 1 ]
	then
		flag=1
		echo $counter
	fi
fi
done
if [ $flag -eq 0 ]
then
	echo $number is a prime number 
fi
