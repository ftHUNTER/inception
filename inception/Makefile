
all: 
	docker compose -f srcs/docker-compose.yml up --build 

down:
	docker compose -f srcs/docker-compose.yml down

rm:
	docker volume rm srcs_database
	docker volume rm srcs_wordpress-data