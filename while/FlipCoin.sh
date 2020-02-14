#!/bin/bash -x

#CONSTANT
GOAL=11

#VARIABLE
headCount=0
tailCount=0

while [ $headCount -le $GOAL -o $tailCount -le $GOAL ]
do
   flipCoin=$(($RANDOM%2))
   if [ $flipcoin -eq 1 ]
   then
      printf "head"
      ((headCount++))
   else
      printf "tail"
      ((tailCount++))
   fi
if [ $headCount -eq $GOAL -o $tailCount -eq $GOAL ]
then
   if [ $headCount -eq $GOAL ]
   then
      printf "Win"
      printf "Tail count: $tailCount"
   else
      printf "Tail"
      printf "Head count: $headCount"
   break
   fi
fi
done

