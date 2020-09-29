#!/bin/bash
echo "welcome to computation problem"
ispresent=1
wageperhour=20
salary=0
Totalsal=0
Fulltime=1
Parttime=2


randomCheck=$((RANDOM%2));
if [ $ispresent -eq $randomCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

empname=emp
echo "Calculate wages for Month"
echo "Enter number of working days "
read num

num=20

for((day=1;day<=$num;day++))
do
	employeecheck=$((1+RANDOM%2))
	case $employeecheck in
		$Fulltime)
			empname=FulltimeEmployee
			emphrs=8
			;;
		$Parttime)
			empname=ParttimeEmployee
			emphrs=4
			;;
		esac
		salary=$(( $emphrs*$wageperhour ))
		echo "Salary of $empname on the day $day is $salary"
		Totalsal=$(($Totalsal + $salary ))
done
echo "Total Salary =$Totalsal"

