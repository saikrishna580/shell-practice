#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e\32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit  #1 give other then 0 upto 127
else
    echo "You are running with root access"
fi

VALIDATE(){
     if [ $1 -eq 0 ]
    then
        echo -e "Installing $2 is ... $G SUCCESS $N"
    else
        echo -e  "Installing $2 is ... $R FAILURE $N"
        exit 1
    fi   

}
dnf list installed mysql
if [ $? -ne 0 ]
then 
    echo "Mysql is not installed... going to install it"
    dnf install mysql
    VALIDATE $? "mysql"
else
    echo -e "Nothimg to do Mysql....$Y already installed $N"
 fi 

 dnf list installed phython3
if [ $? -ne 0 ]
then 
    echo "python3 is not installed... going to install it"
    dnf install python3
    VALIDATE $? "python3"
else
    echo -e "Nothimg to do python....$Y already installed $N"
 fi

 dnf list installed nginx
if [ $? -ne 0 ]
then 
    echo "nginx is not installed... going to install it"
    dnf install nginx
    VALIDATE $? "ngnix"
else
    echo -e "Nothimg to do nginx....$Y already installed $N"
 fi