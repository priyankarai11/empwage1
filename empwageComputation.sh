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

getWorkhours ( ){
days=$1
emphrs=$2
while [[ $days -le 20 || $emphrs -le 100 ]]
do
	employeecheck=$((1+RANDOM%2))
	case $employeecheck in
		$Fulltime)
			empname=FulltimeEmployee
			emphrs=$(( $emphrs + 8 ))
			;;
		$Parttime)
			empname=ParttimeEmployee
			emphrs=$(( $emphrs + 4 ))
			;;
		esac
		salary=$(( $emphrs*$wageperhour ))
		echo "Salary of $empname on the day $days is $salary"
		Totalsal=$(($Totalsal + $salary ))
		((days++))
done
}
days=1
emphrs=0
getWorkhours $days $emphrs
echo "Total Salary =$Totalsal"
echo "Working hours =$emphrs"
