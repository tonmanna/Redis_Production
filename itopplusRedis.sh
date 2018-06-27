#!/bin/sh
sysctl -w net.core.somaxconn=40000
#echo never > /sys/kernel/mm/transparent_hugepage/enabled
redis-server /etc/redis.conf
