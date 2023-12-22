#!/bin/bash

ID=$(id -u)


R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at  $TIMESTAMP"  &>>$LOGFILE
VALIDATE(){

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
    echo "Error please run this script with root access"
    exit 1  # you can give other than 0
else
    echo "you are root user"
    
fi

#echo "All Arguments Passed: $@"

for package in $@  #looping
    do 
    #check if package is installed or not
    yum list installed $package  &>>$LOGFILE  #check installed or not
    if [ $? -ne 0 ]  #if not install
    then
        yum install $package -y  &>>$LOGFILE
        VALIDATE $? "Installation of $package"  #check if package is properly installed or not
    else
    echo -e "$package is already installed ...$Y skipping $N"
    fi
    done