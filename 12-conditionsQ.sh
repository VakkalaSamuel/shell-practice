#!/bin/bash

#write a script to know a number is prime or not

# Read input number
read -p "Enter a number: " num

# 0 and 1 are not prime
if [ $num -le 1 ]; then
    echo "$num is not a prime number."
    exit 0
fi

# Check divisibility
for ((i=2; i*i<=num; i++))
do
    if [ $((num % i)) -eq 0 ]; then
        echo "$num is not a prime number."
        exit 0
    fi
done

echo "$num is a prime number."
