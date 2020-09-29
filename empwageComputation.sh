#!/bin/bash
echo "welcome to computation problem"
ispresent=1
randomCheck=$((RANDOM%2));
if [ $ispresent -eq $randomCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
