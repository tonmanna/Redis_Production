#!/bin/sh
sysctl -w net.core.somaxconn=2500
sysctl vm.overcommit_memory=1
#echo never > /sys/kernel/mm/transparent_hugepage/enabled
redis-server /etc/redis.conf
