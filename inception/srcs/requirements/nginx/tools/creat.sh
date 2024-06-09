#!/bin/bash


openssl req -x509 -nodes -out ${ssl_crt} -keyout ${ssl_key} -subj "/C=MR/ST=Marrakesh/L=Ben Guerir/O=1337/OU=1337/CN=reda/UID=rchmouk"

sed -i 's|crt|'"$ssl_crt"'|g; s|keyy|'"$ssl_key"'|g' /etc/nginx/conf.d/nginx.conf


exec nginx -g 'daemon off;'