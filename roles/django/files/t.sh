#!/bin/bash
echo $PWD
mysql -e "CREATE DATABASE dj IF NOT EXISTS CHARACTER SET utf8"
