#!/bin/bash
#Our scriptin is install POSTFIX for GMAIL
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo "ERROR :: Please run this script with root access"
    exit 1
fi
yum install postfix -y
if [ $? -ne 0 ]
then
    echo "Installation of postfix is error"
    exit 1
else
    echo "postfix installation is success"
fi