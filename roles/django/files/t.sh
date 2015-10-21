#!/bin/bash
DATE=`date`
#https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
#iptables -A INPUT -p tcp --dport 8000 -j ACCEPT
#mysql -e "CREATE DATABASE IF NOT EXISTS $1 CHARACTER SET utf8"
#if [ ! -d $1 ]
#	then
#	  django-admin.py startproject $1 && echo "$DATE $1 created" >> log_django
#	else
#	  echo "$DATE $1 exists" >> log_django
#fi
#APPS=$2
#for app in ${APPS[*]}; do 
echo "APPS: $2" >> log_django
#git clone -b {{ apps }}
#done
#python manage.py makemigrations {{ apps }}
#cd $1 && python manage.py migrate
