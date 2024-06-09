FROM debian:11

RUN apt update -y && apt install -y php php-fpm php-mysql curl


RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar &&\
mv wp-cli.phar /usr/local/bin/wp

COPY tools/creat.sh /

RUN chmod +x creat.sh

RUN  mkdir -p /run/php\
&& chown www-data:www-data /run/php\
&& chmod 755 /run/php


ENTRYPOINT ["./creat.sh"]