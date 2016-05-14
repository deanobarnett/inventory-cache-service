FROM erikcw/lapis
MAINTAINER dean@shopkeep.com

RUN apt-get update; apt-get -y upgrade

ADD . /app
WORKDIR /app
