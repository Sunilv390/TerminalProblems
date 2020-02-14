#!/bin/bash -x

read -p "Enter number : " numbers

#FUNCTION TO CHECK IF NUMBER IS PRIME
function isPrime(){
isPrime=0;
for (( counter=2; counter<=$1/2; counter++ ))
do
   if [ $(($1%$counter)) -eq 0 ]
   then
      isPrime=1;
      break;
   fi
done
if [ $isPrime -eq 0 ]
then
   echo "$numbers isPrime"
else
   echo "$numbers is NotPrime"
fi
}
echo "$( isPrime $numbers )"


