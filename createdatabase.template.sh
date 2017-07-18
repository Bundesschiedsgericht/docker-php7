#!/bin/bash

echo "CREATE DATABASE processwire;" | mysql
echo "CREATE USER 'processwire'@'%' IDENTIFIED BY 'secret';" | mysql
echo "GRANT ALL PRIVILEGES ON processwire.* TO 'processwire'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

