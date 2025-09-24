#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelage"
fi

dnf install mysql -y

if [$? -ne 0 ]; then
    echo "EROR:: Installing MySQL is failure"
else
    echo "Installing MySQL is SUCCESS"
fi