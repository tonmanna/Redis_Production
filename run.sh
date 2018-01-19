#!/bin/bash
docker rm -f myredis
docker run -d -p 6370:6379 --restart=always --privileged -v $(pwd)/redis.conf:/etc/redis.conf -v redis_content:/data --name myredis redis_itopplus
