#! /bin/bash -x
read -p "Think a number between 1-100: " n
i=0;
while [ $n -lt $n/2 ||  $n -gt $n/2 ]
do
	i=$((i+n%10));
	n=$((n/10));
	((n++))
done
if [ $s -eq 1 ]
then
	echo "$n is magic number"
else
	echo "$n is not a  magic number"
fi

