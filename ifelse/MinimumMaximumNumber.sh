#!/bin/bash -x

#USERINPUT
randomCheck1=$((100+RANDOM%999))
randomCheck2=$((100+RANDOM%999))
randomcheck3=$((100+RANDOM%999))
randomCheck4=$((100+RANDOM%999))
randomCheck5=$((100+RANDOM%999))

#MAXIMUM NUMBERS
if [ $randomCheck1 -gt $randomCheck2 -a $randomCheck1 -gt $randomCheck3 -a $randomCheck1 -gt $randomCheck4 ]
then
	printf "$randomCheck1 is Maximum"
elif [ $randomCheck2 -gt $randomCheck3 -a $randomCheck2 -gt $randomCheck4 -a $randomCheck2 -gt $randomCheck1 ]
then
	printf  "$randomCheck2 is Maximum"
elif [ $randomCheck3 -gt $randomCheck4 -a $randomCheck3 -gt $randomCheck2 -a $randomCheck3 -gt $randomCheck1 ]
then
	printf "$randomCheck3 is Maximum"
elif [ $randomCheck4 -gt $randomCheck3 -a $randomCheck3 -gt $randomCheck2 -a $randomCheck4 -gt $randomCheck1 ]
then
	printf "$randomCheck4 is Maximum"
fi

#MINIMUM NUMBERS
if [ $randomCheck1 -lt $randomCheck2 -a $randomCheck1 -lt $randomCheck3 -a $randomCheck1 -lt $randomCheck4 ]
then
	printf "$randomCheck1 is Minimum"
elif [ $randomCheck2 -lt $randomCheck3 -a $randomCheck2 -lt $randomCheck4 -a $randomCheck2 -lt $randomCheck1 ]
then
	printf  "$randomCheck2 is Minimum"
elif [ $randomCheck3 -lt $randomCheck4 -a $randomCheck3 -lt $randomCheck2 -a $randomCheck3 -lt $randomCheck1 ]
then
	printf "$randomCheck3 is Minimum"
elif [ $randomCheck4 -lt $randomCheck3 -a $randomCheck3 -lt $randomCheck2 -a $randomCheck4 -lt $randomCheck1 ]
then
	printf "$randomCheck4 is Minimum"
fi
