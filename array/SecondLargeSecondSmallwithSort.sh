#!/bin/bash -x

#GENERATE 10 RANDOM NUMBERS AND STORE IN ARRAY
for (( counter=1;counter<=10;counter++ ))
do
array1[$counter]=$((100+RANDOM%900))
done
echo ${array1[@]}

#SORTING THE ARRAY
function  sort(){
array=("$@")
for (( index=0; index<$((${#array[@]}-1)); index++ ))
do
   for (( index2=0; index2<$((${#array[@]}-1)); index2++ ))
   do
      if [ ${array[index2]} -gt ${array[index2+1]} ]
      then
         temporary=${array[index2]}
         array[index2]=${array[index2+1]}
         array[index2+1]=$temporary
      fi
   done
done
echo ${array[@]}
}

#CALL SORT FUNCTION AND STORE THE RESULT IN ARRAY
array=($(sort ${array1[@]}))
echo ${array[@]}

#LENGTH OF ARRAY
length=${#array1[@]}
echo Second Largest Element : ${array[length-2]}
echo Second Smallest Element : ${array[1]}

