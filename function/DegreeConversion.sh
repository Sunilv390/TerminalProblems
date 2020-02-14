#!/bin/bash -x

#CONSTANTS
CELCIUS_TO_FAHRENHEIT=1
FAHRENHEIT_TO_CELCIUS=2

#CHOICE FROM USER
printf "Enter 1. Celius to Fahrenheit
   2. Fahrenheit to Celsius \n"
read choice

#FUNCTION TO CONVERT CELCIUS TO FAHRENHEIT
function getFahrenheit(){
read -p "Enter temperature in Celcius : " celcius;
if [ $celcius -ge 0 -a $celcius -le 100 ]
then
   fahrenheit=$(echo "scale=5;(9/5 * $celcius) + 32"  | bc);
   echo $celcius Celcius = $fahrenheit Fahrenheit;
else
   echo Enter temperature between 0 and 100 degree Celcius
fi
}

#FUNCTION TO CONVERT FAHRENHEIT TO CELCIUS
function getCelcius(){
read -p "Enter Temperature in Fahrenheit : " fahrenheit;
if [[ $fahrenheit -ge 32 && $fahrenheit -le 212 ]]
then
   celcius=$(echo "scale=5;($fahrenheit-32)*5/9" | bc);
   echo $fahrenheit Fahrenheit = $celcius Celcius;
else
   echo Enter temperature between 32 and 212 degree fahrenheit
fi
}

#CASE TO CHECK WHICH FUNCTION TO CALL
case $choice in
   $CELCIUS_TO_FAHRENHEIT)
      answer="$( getFahrenheit )"
      ;;
   $FAHREN_TO_CELCIUS)
      answer="$( getCelcius )"
      ;;
      *)
      answer="Wrong Input"
      ;;
esac
echo $answer


