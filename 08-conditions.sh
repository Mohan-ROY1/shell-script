#!/bin/baash
#Check if the number is greter than 10 or not
NUMBER=$1
if [$NUMBER -gt 10] 
then
    echo "$NUMBER is greter than 10"
else 
    echo "$NUMBER is less than 10 "
fi