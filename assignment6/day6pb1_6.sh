read -p "Enter the number" n
for (( i=1; i<=n; i++ ))
do
	if [ $(( n%i )) -eq 0 ]
	then
	echo $i
	fi
	for (( j=2; j<=i/2; j++ ))
	do
	if [ $(( i%j )) -eq 0 ]
	then
	echo $i
	fi
	done
done
