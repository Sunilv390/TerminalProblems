#!/bin/bash -x

#VARIABLE
count=0

#CHECK NUMBERS BETWEEN 0 AND 100 THAT HAVE SAME DIGITS
for (( counter=0; counter<100; counter++ ))
do
   if [ $(($counter%10)) -eq $(($counter/10)) -a $(($counter/10)) -ne 0 ]
   then
      array[((count++))]=$counter
   fi
done
echo ${array[@]}

