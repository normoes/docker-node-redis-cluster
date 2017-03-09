cd node
docker build -t normoes/node . --no-cache
cd ..

cd redis_protectedModeOff
cd redis_base
docker build -t normoes/redis . --no-cache
cd ..
cd redis_primary
docker build -t normoes/redis_primary . --no-cache
cd ..
cd redis_replica
docker build -t normoes/redis_replica . --no-cache
cd ../..

cd logstash
docker build -t normoes/logstash . --no-cache
cd ..
