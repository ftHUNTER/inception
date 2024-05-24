FROM debian:11

RUN apt update && apt install -y mariadb-server

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/creat.sh /

RUN chmod +x creat.sh

CMD ["./creat.sh"]