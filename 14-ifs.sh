#!/bin/bash
file=/etc/passwd

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ ! -f $file ]
then
echo -e "$R Source directory : $file does not exist. $N"

fi


while IFS=":" read -r username password userid groupid userfullname homedir shellpath
do
echo "username : $username"
echo "pwd : $password"
echo "userid : $userid"
echo "groupid : $groupid"
echo "userfullname : $userfullname"
echo "homedir : $homedir"
echo "shelpath : $shellpath"


done < $file