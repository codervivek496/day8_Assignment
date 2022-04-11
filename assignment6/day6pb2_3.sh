#! /bin/bash -x
h=0
t=0
while [ $h -le 11 ] || [ $t -le 11 ]
do
r=$(( RANDOM%2 ))
if [ $r -eq 0 ]
then
	t=$((t+1))
else
	h=$((h+1))
fi
if [ $h -eq 11 ] || [ $t -eq 11 ]
then
	break
fi
done
echo "Head" $h and "Tails" $t
