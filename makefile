up:
	cd ./docker && docker-compose up -d --build
down:
	cd ./docker && docker-compose down
exec:
	cd ./docker && docker-compose run php $(COMMAND)
