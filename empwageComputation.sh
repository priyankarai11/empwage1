#!/bin/bash
echo "welcome to computation problem"
ispresent=1
wageperhour=20
hoursperday=8
parttimehoursperday=4
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

echo "Calculating part time employee and wage"
ParttimeWageperday=$(($wageperhour*$parttimehoursperday))
echo "Part time employee Daily wage $ParttimeWageperday"
