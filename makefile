setfacl:
	setfacl -dR -m u:www-data:rwX -m u:$(whoami):rwX var \
	setfacl -R -m u:www-data:rwX -m u:$(whoami):rwX var

up:
	docker-compose up -d

down:
	docker-compose down

bash:
	docker-compose exec web bash