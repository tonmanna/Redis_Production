#!/bin/sh
sysctl -w net.core.somaxconn=2500
redis-server /etc/redis.conf
