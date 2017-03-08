FROM normoes/redis
MAINTAINER Norman <normo@posteo.de>

ENTRYPOINT [ "redis-server", "--protected-mode no", "--logfile /var/log/redis/redis-server.log", "--slaveof redis_primary 6379" ]
