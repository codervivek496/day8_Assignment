#!/bin/bash -x
read -p "enter the number::" n
function prime()
{
        c=0
        for((i=1;i<$n;i++))
        do
                if [ $((n%i)) -eq 0 ]
                then
                        c=$((c+1))
                fi
        done
        if [ $c -gt 2 ]
        then
                echo $i
        else
                echo "the number is prime"
        fi
}
p=$(prime $n)
echo $p
function pali()
{
        s=0
        r=""
        t=$n
        while(($n>0))
        do
                a=$(( n%10 ))
                n=$(( n/10 ))
                r=$(( r+s ))
        done
        if [ $t -eq $r ]
        then
                echo $r
        else
                echo "the number is not palindrom"
        fi
}
pl=$(pali $n)
echo $pl
if [ $pl.$r -eq $n.$i ];
then
        echo "the number is prime and palindrome"
else
        echo "the number is either prime or palindome"
fi
