#!/bin/bash -x

#VARIABLE
randomCheck=$((1+RANDOM%8))
case $randomCheck in
	"1")
		printf "one"
	;;
	"2")
		printf "two"
	;;
	"3")
		printf "three"
	;;
	"4")
		printf "four"
	;;
	"5")
		printf "five"
	;;
	"6")
		printf "six"
 	;;
	"7")
		printf "seven"
	;;
	"8")
		printf "eight"
	;;
	"9")
		printf "nine"
	;;
	*)
		printf "Invalid number"
	;;
esac
