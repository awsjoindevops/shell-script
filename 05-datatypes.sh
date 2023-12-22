#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "TOTAL : $SUM"

echo "NO of Args passed : $#"

echo "ALL Args passed : $@"