#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error please run this script with root access"
    exit 1  # you can give other than 0
else
    echo "you are root user"
    
fi


yum install mysql -y 

 if [ $? -ne 0 ]
 then
 echo  "ERROR : INSTALLATION mysql  is failed"
 exit 1

 else
 echo "mysql installation is success"
fi



yum install git -y 

 if [ $? -ne 0 ]
 then
 echo  "ERROR : INSTALLATION git  is failed"
 exit 1

 else
 echo "git installation is success"
fi
