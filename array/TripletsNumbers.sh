#!/bin/bash -x

read -p "Enter a number of element: " number
for (( index=0; index<number; index++ ))
do
   read -p "Enter elements in an array: " array[index]
done
echo ${array[@]}

#STORING ARRAY LENGTH
length=${#array[@]}

#CHECKING TRIPLETS SUM EQUAL 0
for (( counter1=0; counter1<length-2; counter1++ ))
do
   for (( counter2=counter1+1; counter2<length-1; counter2++ ))
   do
      for (( counter3=counter2+1; counter3<length; counter3++ ))
      do
         if [ $((${array[counter1]}+${array[counter2]}+${array[counter3]})) -eq 0 ]
         then
            echo ${array[counter1]} ${array[counter2]} ${array[counter3]}
         fi
      done
   done
done

