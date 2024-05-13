#!/bin/bash

service mariadb start

sleep 5

mysql --skip-password -u root -e "CREATE DATABASE IF NOT EXISTS redaDb;"

mysql -u root -p --skip-password <<EOF
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'new_password';
GRANT ALL PRIVILEGES ON redaDb.* TO 'new_user'@'localhost';
FLUSH PRIVILEGES;
EOF

sleep 5

service mariadb stop


mysqld_safe
