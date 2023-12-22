#!/bin/bash

ID=$(id -u)

VALIDATE()
{

        if [ $1 -ne 0 ]
        then
        echo  "ERROR :  $2 is -------FAILED"
        exit 1

        else
        echo "$2 is ------- SUCCESS"
        fi

}


if [ $ID -ne 0 ]
then
    echo  -e "$R Error please run this script with root access $N"
    exit 1  # you can give other than 0
else
    echo "you are root user"
    
fi


yum install mysql -y 

VALIDATE $? "INSTALLING MYSQL"

yum install git -y 

VALIDATE $? "INSTALLING GIT"