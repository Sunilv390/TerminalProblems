#!/bin/bash -x

#VARIABLE
randomCheck=$((1+RANDOM%6))
printf $randomCheck

#SWITCHCASE
case $randomCheck in
	"1")
		printf "Monday"
	;;
	"2")
		printf "Tuesday"
	;;
	"3")
		printf "Wednesday"
	;;
	"4")
		printf "Thursday"
	;;
	"5")
		printf "Friday"
	;;
	"6")
		printf "Saturday"
	;;
	"7")
		printf "Sunday"
	;;
	*)
		printf "Invalid number"
	;;
esac
