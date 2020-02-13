#!/bin/bash -x

#CONSTANTS
INCHES=42
FEET=$(($INCHES/12))
AREA=$(((length*breadth)/10))

#USERINPUT
read -p "enter length" length
read -p "enter breadth" breadth

#CONVERSION
printf 42 Inches= $FEET
printf Area= $AREA sqft
printf "Area of 25 plots are $(($AREA*25))"
printf "Area in acres $(($AREA/4047))"
