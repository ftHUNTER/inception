#!/bin/bash

service mariadb start


mariadb -u root -e " 
CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;
CREATE USER '$SQL_USER' IDENTIFIED BY '$SQL_PASSWORD';
GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$SQL_USER';
FLUSH PRIVILEGES;"

service mariadb stop

mysqld_safe