#!/bin/bash

ID=$(id -u)

echo "Script Name: $0"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE=/tmp/"$0-TIMESTAMP.log"


R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE()
{
        if [ $1 -ne 0 ]
        then
        echo  -e " $R ERROR :  $2 is -------FAILED $N"
        exit 1

        else
        echo  -e "$G $2 is ------- SUCCESS $N"
        fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R Error please run this script with root access $N"
    exit 1  # you can give other than 0
else
    echo -e " $G you are root user $N"  
fi

yum install mysql -y  &>> $LOGFILE
VALIDATE $? "INSTALLING MYSQL"

yum install git -y  &>> $LOGFILE
VALIDATE $? "INSTALLING GIT"