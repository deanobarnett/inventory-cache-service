.PHONY: run build clean test

build:
	@docker-compose build service

ifdef USE_DOCKER

run: clean build
	@docker-compose up service

test: clean build
	@docker-compose run --rm service make test

clean:
	@docker-compose run --rm service make clean

endif

ifndef USE_DOCKER

run:
	@lapis server

test:
	@luacheck app && busted

clean:
	rm luacov.*
	rm -f nginx.conf.compiled
	rm -rf *_temp
	rm -rf logs
endif
