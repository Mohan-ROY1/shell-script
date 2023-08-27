#!/bin/bash
#This is examle for functions
DATE=$(date + %F)
SCRIPT_NAME=$0
LOG_FILE = /tmp/$SCRIPT_NAME - $DATE.LOG
USER_ID=$(id -u)

VALIDATE(){
    if [$? -ne 0]
    then
        echo "Installation of MYSQL is error"
        exit 1
    else
        echo "Installation of MYSQL is success"
}
if [$? -ne 0]
then
    echo "ERROR :: Please rin this script with root access"
    exit 1
fi