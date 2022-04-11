a=100
h=0
t=0
while [ $h -le 100 ] || [ $t -le 100 ]
do
	r=$(( RANDOM%2 ))
	if [ $r -eq 0 ]
	then
		a=$((a-1))
		h=$((h+1))
	else
		a=$((a+1))
		t=$((t+1))
	fi
	if [ $a -eq 0 ] || [ $a -eq 200 ]
	then
		break

	fi
done

echo "Head" $h ", "  "Tails "$t
