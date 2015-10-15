#!/bin/bash
echo $PWD >> log_django
DATE=`date`
#https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
mysql -e "CREATE DATABASE IF NOT EXISTS dj CHARACTER SET utf8"
if [ ! -d $1 ]
	then
	  django-admin.py startproject $1 && echo "$DATE $1 created" >> log_django
	else
	  echo "$DATE $1 exists" >> log_django
fi
