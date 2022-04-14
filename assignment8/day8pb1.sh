declare -A dict
dict=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0)
v=0
for((i=0;i<50;i++))
do
        r=$(( RANDOM%6+1 ))
        if [ $r -eq 1 ]
        then
                dict["1"]=$(( ${dict["1"]}+1 ))
        elif [ $r -eq 2 ]
        then
                dict["2"]=$(( ${dict["2"]}+1 ))
        elif [ $r -eq 3 ]
        then
                dict["3"]=$(( ${dict["3"]}+1 ))
        elif [ $r -eq 4 ]
        then
                dict["4"]=$(( ${dict["4"]}+1 ))
        elif [ $r -eq 5 ]
        then
                dict["5"]=$(( ${dict["5"]}+1 ))
        elif [ $r -eq 6 ]
        then
                dict["6"]=$(( ${dict["6"]}+1 ))
        fi
        for i in ${dict[@]}
        do
                if [ $i -eq 10 ]
                then
                        c=1
                fi
        done
        if [ $(( c )) -eq 1 ]
        then

                break;
        fi
        v=$(( v+1 ))
done
echo "the number of times to get 10:"$v

echo ${dict[@]}
