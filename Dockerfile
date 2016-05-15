FROM abaez/lapis
MAINTAINER dean@shopkeep.com

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install runtime dependancies
RUN luarocks install redis-lua

# Install test dependancies
RUN luarocks install luacheck
RUN luarocks install luacov-coveralls
RUN luarocks install busted

COPY . /usr/src/app

EXPOSE 8080

ENTRYPOINT []
CMD [ "lapis", "server" ]
