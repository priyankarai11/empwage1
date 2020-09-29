#!/bin/bash
echo "welcome to computation problem"
ispresent=1
wageperday=20
hoursperday=8
randomCheck=$((RANDOM%2));
if [ $ispresent -eq $randomCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

echo "Calculating daily wage of employee"
wageperday=$((20*8))
echo "Daily employee wage $wageperday"
