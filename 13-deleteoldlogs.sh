#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"


R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


if [ ! -d $SOURCE_DIR ] 
then
    echo  -e " $R Source Directory : $SOURCE_DIR does not exist $N"

    fi


FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
echo "deleting file : $line"
rm -rf $line

done <<< $FILES_TO_DELETE
