FROM erikcw/lapis
MAINTAINER dean@shopkeep.com

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN luarocks install redis-lua

COPY . /usr/src/app

EXPOSE 8080
CMD [ "server" ]
