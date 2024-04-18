#!/bin/bash
docker rm -f myredis
docker run -d -p 6399:6379 --restart=always --privileged -v /${PWD}/redis.conf:/etc/redis.conf -v redis_content:/data --name myredis redis_itopplus
