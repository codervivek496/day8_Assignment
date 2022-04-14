declare -A e
e=(["jan"]=0 ["feb"]=0 ["mar"]=0 ["apr"]=0 ["may"]=0 ["jun"]=0 ["jul"]=0  ["aug"]=0 ["sep"]=0 ["oct"]=0 ["nov"]=0 ["dec"]=0)
for((i=0;i<50;i++))
do
        r=$((RANDOM%24+1))
        if [ $r -eq 1 ] || [ $r -eq 13 ]
        then
                e["jan"]=$((${e["jan"]}+1))
        elif [ $r -eq 2 ] || [ $r -eq 14 ]
        then
                e["feb"]=$((${e["feb"]}+1))
        elif [ $r -eq 3 ] || [ $r -eq 15 ]
        then
                e["mar"]=$((${e["mar"]}+1))
        elif [ $r -eq 4 ] || [ $r -eq 16 ]
        then
                e["apr"]=$((${e["apr"]}+1))
        elif [ $r -eq 5 ] || [ $r -eq 17 ]
        then
                e["may"]=$((${e["may"]}++1))
        elif [ $r -eq 6 ] || [ $r -eq 18 ]
        then
                e["jun"]=$((${e["jun"]}+1))
        elif [ $r -eq 7 ] || [ $r -eq 19 ]
        then
                e["jul"]=$((${e["jul"]}+1))
        elif [ $r -eq 8 ] || [ $r -eq 20 ]
        then
                e["aug"]=$((${e["aug"]}+1))
        elif [ $r -eq 9 ] || [ $r -eq 21 ]
        then
                e["sep"]=$((${e["sep"]}+1))
        elif [ $r -eq 10 ] || [ $r -eq 22 ]
        then
                e["oct"]=$((${e["oct"]}+1))
        elif [ $r -eq 11 ]  || [ $r -eq 23 ]
        then
                e["nov"]=$((${e["nov"]}+1))
        elif [ $r -eq 12 ] || [ $r -eq 24 ]
        then
                e["dec"]=$((${e["dec"]}+1))
        fi
done
for k in ${!e[@]}
do
        echo  "$k :" ${e[$k]}
done
