#!/bin/bash -x

#CONSTANTS
FEETtoINCH=1
FEETtoMETER=2
INCHtoFEET=3
METERtoFEET=4

#VARIABLE
read -p "Enter a choice: " choice
randomCheck=$((1+RANDOM%8))
printf "Random value: $randomCheck"

#SWITCH CASE OPERATION
case $choice in
	1)
	randomCheck=$((randomCheck*12))
	printf "FEET to INCH: $randomCheck"
	;;
	2)
	randomCheck=`printf"scale=2; $randomCheck/3.28" | bc`
	printf "FEET to METER: $randomCheck"
	;;
	3)
	randomCheck=`printf"scale=2; $randomCheck/12" | bc`
	printf "INCH to FEET: $randomCheck"
	;;
	4)
	randomCheck=`printf"scale=2; $randomCheck*3.28" | bc`
	printf "METER to FEET: $randomCheck"
	;;
	*)
	printf "Invalid choice"
	;;
esac
