#!/bin/bash

sleep 8
wp core download --path=/var/www/html --allow-root
cd /var/www/html
sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf
wp config create --dbhost="mariadb_container" --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --allow-root
wp core install  --url=localhost --title=$TITILE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email="redachmouk@gmail.com" --allow-root

php-fpm7.4 -F
