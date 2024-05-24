#!/bin/bash

service mariadb start


mysql -u root -p --skip-password <<EOF
CREATE DATABASE redaDb;
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'new_password';
GRANT ALL PRIVILEGES ON redaDb.* TO 'new_user'@'localhost';
FLUSH PRIVILEGES;
EOF


service mariadb stop

service nginx start

service php7.4-fpm start

mysqld_safe
