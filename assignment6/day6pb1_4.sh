read -p "Enter the lower limit" n1
read -p "Enter the upper limit" n2

for (( i=n1; i<=n2; i++ ))
do
	for (( j=2; j<=$i-1; j++ ))
	do
	if [ $(( i%j )) -eq 0 ]
	then
		break
	fi
	done
	if [ $i -eq $j ]
	then
		echo $j
	fi
done
