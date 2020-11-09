#!/bin/bash
arr=(22 34 53 42 65 11 76)
len=${#arr[@]}
first=0
second=0

for (( i=0; i<$len; i++ ))
do
        if [ ${arr[$i]} -gt $first ]
                then
                        second=$first
                        first=${arr[i]}

                elif [ ${arr[i]} -lt $second ]
                then
                                second=${arr[i]}
                fi
done
echo "second large number is $first"
echo "second small number is $second"
OutPut : $ ./SlargeSsmallEle.sh
second large number is 76
second small number is 65
