#!/bin/bash -x

read -p " Enter number : " numbers

#FUNCTION TO CHECK IF NUMBER IS PALINDROME
function isPalindrome(){
sum=0;
number=$1
while [ $number -gt 0 ]
do
   remainder=$((number%10));
   sum=$((sum*10+remainder));
   number=$((number/10));
done

#CHECKS NUMBER IS PALINDROME OR NOT
if [ $sum -eq $1 ]
then
   echo "$numbers is Palindrome"
else
   echo "$numbers is not Palindrome "
fi
}
echo "$( isPalindrome $numbers )"



