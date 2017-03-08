FROM normoes/redis
MAINTAINER Norman <normo@posteo.de>

ADD redis.conf /etc/redis/redis.conf

ENTRYPOINT [ "redis-server", "--logfile /var/log/redis/redis-server.log", "--requirepass 'securepwd'" ]
