#!/bin/bash
#Our scriptin is install git
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo "ERROR :: Please run this script with root access"
    exit 1
fi
yum install git -y
if [ $? -ne 0 ]
then
    echo "Installation of git is error"
    exit 1
else
    echo "git installation is success"
fi