#!/bin/bash
#input of Array
arr=(10 8 20 100 1 12 55)

#For max diff we will sort arry and find diff bw first and last element
echo "Array "
echo ${arr[*]}
  
##arry length
alen=${#arr[@]}

# Performing Bubble sort 
for ((i = 0; i<$alen; i++))
do
      
    for((j = 0; j<$alen-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
#echo "Array in sorted order :"
#echo ${arr[*]}

maxdiff=`expr ${arr[$alen-1]} - ${arr[0]} `
echo "Max diff is : "$maxdiff
