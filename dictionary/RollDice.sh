#!/bin/bash -x

declare -A dice

# STORING RESULT COUNT OF DICE
while [[ ${dice[$randomCheck]} -ne 10 ]]
do
   randomCheck=$((1+RANDOM%6))
   dice[$randomCheck]=$((${dice[$randomCheck]}+1))
done

#INITIALIZATION
maximumValue=${dice[1]}
minimumValue=${dice[1]}
maximumIndex=0
minimumIndex=0

# TO FIND NUMBER THAT REACHED MAXIMUM TIMES AND MINIMUM TIMES
for (( index=2; index<=6; index++ ))
do
   if [[ $maximumValue -lt ${dice[$index]} ]]
   then
      maximumValue=${dice[$index]}
      maximumIndex=$index
   fi
   if [[ $minimumValue -gt ${dice[$index]} ]]
   then
      minimumValue=${dice[$index]}
      minimumIndex=$index
   fi
done

# DISPLAYING NUMBER AND ITS COUNT WHICH REACHED MAXIMUM AND MINIMUM TIMES
echo ${dice[@]}
echo $maximumValue "Maximum value"
echo $maximumIndex "Maximum Index"
echo $minimumValue "Minimum Value"
echo $minimumIndex "Minimum Index"
