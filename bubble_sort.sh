# Make Bourne Shell program using bubble sort algorithm to sort numbers given by user into the ascending order.
# Program asks first numbers of elements to sort and then asks those numbers one by one.
# Program prints numbers in original and sorted order.
# Bubble Sort is a simple sorting algorithm that works by repeatedly swapping the adjacent elements if they are in the wrong order. See details:
# https://en.wikipedia.org/wiki/Bubble_sort


#!/bin/sh
#
clear
echo "Enter size of array"; read  arraysize; #get the size of array from user.
echo "Enter the array eg: 2 3 4 5 6"; read -a arr; #get the array form user eg: 2 3 4 5 6
echo "Original array is: ${arr[*]}";

flag=1;
for (( i = 0; i < $arraysize-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $arraysize-1-$i; j++ ))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
        break;
    fi

done
echo "Final sorted Array is ${arr[*]}";
