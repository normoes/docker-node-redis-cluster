# docker-node-redis-cluster
simple node view count with redis primary and replica with protected mode on/off


The scripts:
* build_containers.sh
* run_containers.sh
* stop_containers.sh

need to be made executable.

`chmod +x build_containers.sh`

`chmod +x run_containers.sh`

`chmod +x stop_containers.sh`



## TODO:
* filter images
  + `docker image ls normoes/redis`
  + even better
    - docker image ls `--filter "label=com.example.version=0.1"`
    - labels can be set in the Dockerfile
      + `LABEL com.example.version=0.1`
* add more convenience scripts
  + remove images
* improve scripts
  + argumet forcing build of images...
  + arguments forcing stopping/removing containers...
* replace bash scripts by python scripts?
