#!/bin/bash -x

#CONSTANTS
GOAL=200

#VARIABLES
stake=100
bets=0
wins=0
while [[ $stake -gt 0 && $stake -lt $GOAL ]]
do
	((bets++))
	random=$((RANDOM%2))
	if [ $random == 0 ]
	then
		stake=$((stake-1))
	else
		((wins++))
		stake=$((stake+1))
	fi
done
echo "Bets : $bets"
echo "Wins : $wins"
echo "Money : $stake"
