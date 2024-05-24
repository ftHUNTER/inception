FROM debian:11

RUN apt update -y && apt upgrade -y 

RUN apt install -y wget curl 

RUN apt-get install -y php7.3\
    php-fpm\
    php-mysql\
    mariadb-client\
    unzip\
    zsh\
    git\ 
    mariadb-server

RUN apt install -y mariadb-server

RUN yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN zsh

# RUN wget https://wordpress.org/latest.zip -P /var/www

# RUN cd /var/www && unzip latest.zip && rm latest.zip

# RUN		chown -R root:root /var/www/wordpress
CMD [ "bash" ]