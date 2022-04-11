read -p "Enter the input: " n
n=0
while [ $((2**$n)) -le 256 ]
do
	echo $(( 2**$n ))
	((n++))
done
