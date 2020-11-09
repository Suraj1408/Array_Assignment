] #!/bin/bash

large=0
secondLarge=0

function checkValue()
{
         random=$((RANDOM%1000))
        echo $random
}

function main()
{

for((i=0;i<10;i++))
do
        array=$(checkValue)
        if [ $array -lt 9 ]
        then
                array=$(($array*100))
        elif [ $array -lt 99 ]
        then
                array=$(($array*10))
        fi
echo $array
array[i]=$array
done

echo ${array[@]}

for((j=0; j<10; j++))
do
        if [ $large -lt ${array[j]} ]
        then
                secondLarge=$large
                large=${array[j]}
        fi

        if [[ $secondLarge -lt ${array[j]} || ${array[j]} -ne $large ]]
        then
                secondLarge=${array[j]}
        fi
done
#echo "large value  "$large
echo "second large value "$secondLarge

for((i=0;i<10;i++))
do
        array=$(checkValue)
        if [ $array -lt 9 ]
        then
                array=$(($array*100))
        elif [ $array -lt 99 ]
        then
                array=$(($array*10))
        fi
echo $array
array[i]=$array
done

echo ${array[@]}

for((j=0; j<10; j++))
do
        if [ $large -gt ${array[j]} ]
        then
                secondSmall=$small
                small=${array[j]}
        fi

        if [[ $secondLarge -gt ${array[j]} || ${array[j]} -ne $large ]]
        then
                secondSmall=${array[j]}
        fi
done
echo "small value  "$small
echo "second small value "$secondSmall
}
main
