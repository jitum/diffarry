#!/bin/bash
#input of Array
arr=(10 30 16 90 1 9)

#For max diff we will sort arry and find diff bw first and last element
echo "Array "
echo ${arr[*]}
  
##arry length
alen=${#arr[@]}

sum=0

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




for ((i = 0; i<$alen; i++))
do
    sum=`expr $sum + ${arr[$i]} `
       
done



echo "sum is $sum"
echo "number of elements $alen"
avg=0.0
avg=`expr $sum / $alen `
echo "Avrage is :$avg"
