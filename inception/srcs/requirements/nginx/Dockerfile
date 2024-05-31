FROM debian:11

RUN apt update -y && apt install nginx -y \
&& apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MR/ST=Marrakesh/L=Ben Guerir/O=1337/OU=1337/CN=reda/UID=rchmouk"

COPY conf/nginx.conf /etc/nginx/conf.d

CMD [ "nginx", "-g", "daemon off;" ]