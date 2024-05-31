#!/bin/bash

wp core download --path=/wordpress/ --allow-root
cd /wordpress/
wp config create --dbname="redaDb" --dbuser="new_user" --dbpass="new_password" --allow-root
wp core install  --url=localhost --title="title_r" --admin_user="reda" --admin_password="123" --admin_email="redachmouk@gmail.com" --allow-root


php-fpm -F