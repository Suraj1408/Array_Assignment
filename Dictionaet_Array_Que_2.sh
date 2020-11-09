#!/bin/bash
declare -A birthRecord
count=1

while [ $count -lt 50 ]
do
        random=$(((( RANDOM % 12 )) + 1 ))
        birthRecord[$random]=$(("${birthRecord[$random]}" + 1 ))
        count=$(($count+1))
done

for(( i=1; i<=12; i++ ))
do
        echo "month $i ${birthRecord[$i]}"
done
