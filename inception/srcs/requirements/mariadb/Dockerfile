FROM debian:11

RUN apt update && apt install -y mariadb-server && rm -rf /var/lib/apt/lists/*

COPY ./tools/creat.sh /

RUN chmod +x creat.sh

CMD ["./creat.sh"]