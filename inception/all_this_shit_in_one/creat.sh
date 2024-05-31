#!/bin/bash

service mariadb start


mysql -u root -p --skip-password <<EOF
CREATE DATABASE redaDb;
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'new_password';
GRANT ALL PRIVILEGES ON redaDb.* TO 'new_user'@'localhost';
FLUSH PRIVILEGES;
EOF


wp core download --path=/var/www/html --allow-root
cd /var/www/html/
rm index.html index.nginx-debian.html
wp config create --dbname="redaDb" --dbuser="new_user" --dbpass="new_password" --allow-root
wp core install  --url=localhost --title="title_r" --admin_user="reda" --admin_password="123" --admin_email="redachmouk@gmail.com" --allow-root

service mariadb stop

service nginx start

service php7.4-fpm start

mysqld_safe
