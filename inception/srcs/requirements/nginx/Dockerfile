FROM debian:11

RUN apt update -y && apt install nginx -y \
&& apt install openssl -y

RUN mkdir -p /etc/nginx/ssl/

COPY conf/nginx.conf /etc/nginx/conf.d

COPY tools/creat.sh /

RUN chmod +x creat.sh 

CMD [ "./creat.sh" ]