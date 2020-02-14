#!/bin/bash -x

#VARIABLE
count=0

#PRIME FACTORS OF A NUMBER
read -p "Enter the number : " number
storeNumber=$number

#FOR LOOP FOR PRIME FACTORS
for (( counter=2; $((counter*counter))<=$storeNumber; counter++ ))
do
   if [ $(($number%$counter)) -eq 0 ]
   then
      number=$((number/counter))
      array[count]=$counter
      ((count++))
      ((counter--))
   fi
done
echo ${array[@]}


