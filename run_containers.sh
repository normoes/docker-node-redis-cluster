
arg=$1
if [ "$arg" != "" ];then
  echo $1
fi



express_net=$(docker network ls --filter name=^express$ -q)
if [ "$express_net" == "" ];then
  echo "---->"
  echo "    creating docker nework express..."
  echo "---->"
  docker network create express
fi
unset express_net 



docker run -d -p 3000:3000 --net express -h nodeapp --name nodeapp normoes/node

docker run -d -p 6379:6379 --net express -h redis-primary --name redis_primary normoes/redis_primary

docker run -d --net express -h redis-replica1 --name redis_replica1 normoes/redis_replica

docker run -d --net express --name logstash --volumes-from redis_primary --volumes-from nodeapp normoes/logstash

