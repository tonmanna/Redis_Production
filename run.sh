#!/bin/bash
docker rm -f myredis
docker run -d -p 6379:6379 --restart=always --privileged -v redis_content:/data --name myredis redis_itopplus
