#!/bin/bash -x

#VARIABLES
minimum=1000
maximum=99
secondMinimum=1000
secondMaximum=99

#GET MINIMUM AND MAXIMUM
for (( counter=1; counter<=10; counter++ ))
do
array[$counter]=$((100+RANDOM%900))
   if [ ${array[counter]} -gt $maximum ]
   then
      maximum=${array[counter]}
   fi
   if [ ${array[counter]} -lt $minimum ]
   then
      minimum=${array[counter]}
   fi
done
echo ${array[@]}

#GET SECOND MAXIMUM AND SECOND MINIMUM
for (( counter=1; counter<=10; counter++ ))
do
   if [ ${array[counter]} -lt $secondMinimum -a ${array[counter]} -ne $minimum ]
   then
      secondMinimum=${array[counter]}
   fi

   if [ ${array[counter]} -gt $secondMaximum -a ${array[counter]} -ne $maximum ]
   then
      secondMaximum=${array[counter]}
   fi
done
echo Second Minimum : $secondMinimum
echo Second Maximum : $secondMaximum

