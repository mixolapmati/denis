#!/bin/bash
echo $PWD > imhere
#https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
mysql -e "CREATE DATABASE IF NOT EXISTS dj CHARACTER SET utf8"
#django-admin.py startproject mysite