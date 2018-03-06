#!/bin/sh
sysctl -w net.core.somaxconn=2500
echo never > /sys/kernel/mm/transparent_hugepage/enabled
redis-server /etc/redis.conf
