
all:
	mkdir -p /home/rchmouk/data/wordpress
	mkdir -p /home/rchmouk/data/mariadb
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

rm:
	docker compose -f srcs/docker-compose.yml down --rmi all
	docker volume rm $$(docker volume ls -q)
	sudo rm -rf /home/rchmouk/data/wordpress
	sudo rm -rf /home/rchmouk/data/mariadb

re: rm all