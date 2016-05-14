.PHONY: run build clean

run: 
	@docker-compose up service

build: 
	@docker-compose build service

clean: 
	rm -f nginx.conf.compiled
	rm -rf *_temp
	rm -rf logs
