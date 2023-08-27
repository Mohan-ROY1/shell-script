#!/bin/bash
#This is examle for functions
DATE=$(date+%F)
SCRIPT_NAME=$0
LOG_FILE = /tmp/$SCRIPT_NAME-$DATE.LOG

VALIDATE(){
    if [$1 -ne 0]
    then
        echo "$2 of MYSQL is error"
        exit 1
    else
        echo "$2 of MYSQL is success"
}

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo "ERROR :: Please rin this script with root access"
    exit 1
fi
yum install mysql -y &>>$LOG_FILE
VALIDATE $? "mysql installing"
yum install posddtfix -y &>>$LOG_FILE
VALIDATE $? "postfix installing"