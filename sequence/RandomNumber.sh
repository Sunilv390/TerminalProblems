#!/bin/bash -x

#RANDOM NUMBERS
random1=$((RANDOM%6))
random2=$((RANDOM%6))

#ADD TWO RANDOM NUMBER
result=$(($random1+$random2))
echo "Addition of $random1 and $random2 are $result "
