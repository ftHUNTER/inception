FROM debian:11

RUN apt update -y && apt install -y nginx mariadb-server openssl curl php 

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MR/ST=Marrakesh/L=Ben Guerir/O=1337/OU=1337/CN=reda/UID=rchmouk"


RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar &&\
mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --path=/var/www/html/wordpress --allow-root
RUN cd /var/www/html/
RUN wp config create --dbname="redaDb" --dbuser="new_user" --dbpass="new_password" --allow-root
RUN wp core install --title="title_r" --admin_user="reda" --admin_password="123" --admin_email="redachmouk@gmail.com" --allow-root


RUN chmod 777  /var/www/html/

RUN apt install -y php-fpm php-mysql

RUN apt install -y git zsh vim 

RUN yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


COPY nginx.conf /etc/nginx/conf.d/

# RUN service nginx start

# RUN service php7.4-fpm start

COPY creat.sh /

RUN chmod +x creat.sh

#RUN ./creat.sh
