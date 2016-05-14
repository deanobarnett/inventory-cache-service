.PHONY: run build

run: 
	@docker-compose up service

build: 
	@docker-compose run service build
