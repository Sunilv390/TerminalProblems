#!/bin/bash -x

#VARIABLES
lower=1
upper=100
mean=0
echo "Guess any number between 1 to 100"

#WHILE GUESS NUMBER IS NOT FOUND
while [ $lower -ne $mean ]
do
   mean=$((lower+(upper-lower)/2))
   read -p "Enter 1 if less than $mean or 2 is greater than $mean " answer
   if [ $mean -eq $lower ]
   then
      if [ $answer -eq 1 ]
      then
         echo $mean
         break
      else
         echo $(($mean+1))
         break
      fi
   fi
if [ $answer == 1 ]
then
   upper=$mean
else
   lower=$(($mean+1))
fi
done
echo "$mean is the Magic Number"

