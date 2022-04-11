#! /bin/bash -x
read -p "Enter you choice 1.degC to degF: 2.degF to defC : " num
function unit_conversion() {
	case $num in
	1)
	read -p "Enter the number to convert: " num1
	degF=$(( (num1*9/5)+32 ))
	echo "The temprature in fahrenheit is $degF";;
	2)
	read -p "Enter the number to convert: " num2
	degC=$(( (num2-32)*5/9 ))
	echo "The temprature in celcius is $degC";;
	*)
	echo "Invalid";;
esac
}
unit_conversion
