read -p "Enter the number" n

for (( i=1; i<=n; i++ ))
do
	m=$(( 2**$i ))
	echo "A table of power of 2 is $m"
done
