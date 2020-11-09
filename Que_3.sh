arr=(22 34 53 42 65 11 76)
len=${#arr[@]}

for (( i=0; i<$len; i++ ))
do
   flag="true"
   for (( j=2; j<$i; j++ ))
   do
     if [ ${arr[$i]} % ${arr[$j]} -eq 0 ]
     then
         flag="false"
         break
   done
done
if [ $flag == "true" ]
then
   echo "${arr[@]}"
fi
