#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "Given Number is $NUMBER is greater than 100"
else
    echo "Given Number is $NUMBER is not greater than 100"
fi