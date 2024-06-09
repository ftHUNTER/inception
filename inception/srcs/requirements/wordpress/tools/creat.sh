#!/bin/bash

sleep 5
wp core download --path=/var/www/html --allow-root
cd /var/www/html
sed -i 's/^listen = .*/listen = wordpress_container:9000/' /etc/php/7.4/fpm/pool.d/www.conf
wp config create --dbhost=$DB_HOST --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --allow-root
wp core install --url=https://rchmouk.42.fr \
    --title=$TITLE --admin_user=$ADMIN_USER \
    --admin_password=$ADMIN_PASSWORD \
    --admin_email=$EMAIL --allow-root

exec php-fpm7.4 -F
