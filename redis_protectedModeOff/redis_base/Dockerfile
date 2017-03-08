FROM ubuntu:16.04
MAINTAINER Norman <normo@posteo.de>

RUN apt-get -qq update
RUN apt-get -qq install software-properties-common python-software-properties
RUN add-apt-repository ppa:chris-lea/redis-server
RUN apt-get -qq update
RUN apt-get -qq install redis-server redis-tools
RUN apt-get -qq autoremove
RUN apt-get -qq autoclean

VOLUME [ "/var/lib/redis", "/var/log/redis" ]

WORKDIR "/var/lib/redis"

EXPOSE 6379

CMD []
