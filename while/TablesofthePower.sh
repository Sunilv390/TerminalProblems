#!/bin/bash -x

#VARIABLES
counter=0

#USERINPUT
read -p "Enter n : " n
while [[ $((2**$counter)) -le 256 && $counter -le n ]]
do
   echo $((2**$counter))
   ((counter++))
done

