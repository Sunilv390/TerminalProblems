#!/bin/bash -x

#VARIABLE
harmonic=0
read -p "Enter any number : " number;

#CALCULATE HARMONIC NUMBER
for (( counter=1; counter<=$number; counter++ ))
do
	harmonic=$(echo "scale=2;$harmonic + 1/$counter" | bc );
done
echo "$harmonic is a Harmonic number"
