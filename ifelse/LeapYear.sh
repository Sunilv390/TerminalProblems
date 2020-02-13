#USER INPUT
read -p "Enter a year: " year

#CHECKING CONDITIONS
if [ $year -gt 999 -a $year -lt 10000 ]
then
	if [ $((year%4)) -eq 0 -a $((year%100)) -ne 0 -o $((year%400)) -eq 0 ]
	then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
else
	printf "Enter a valid year"
fi
