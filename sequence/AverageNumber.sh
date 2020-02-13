#!/bin/bash -x

#RANDOM NUMBER
random1=$((RANDOM%100))
random2=$((RANDOM%100))
random3=$((RANDOM%100))
random4=$((RANDOM%100))
random5=$((RANDOM%100))
#ARITHMETIC OPERATION
addition=$(($random1+$random2+$random3+$random4+$random5))
average=$(($addition/5))
echo "Sum of all numbers are= " $sum
echo "Average of all numbers are = " $average
