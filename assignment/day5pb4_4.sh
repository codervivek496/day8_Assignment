#! /bin/bash -x
read -p "Enter the unit to convert:-" unit
read -p "Enter 1 for Feet to Inch /nEnter 2 for Feet to Meter /nEnter 3 for Inch to Feet and /nEnter 4 for Meter to feet" num1
case $num1 in
	1)
	echo "Feet to Inch" $(( unit * 12 ));;
	2)
	echo "Inch to Feet" $(( Unit / 12 ));;
	3)
	echo "Feet to Meter" $(( unit / 3.28084 ));;
	4)
	echo "Meter to Feet" $(( unit * 3.28084 ));;
esac
