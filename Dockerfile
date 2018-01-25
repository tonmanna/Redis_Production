FROM redis:4

LABEL EMAIL="IT_TEAM <it@itopplus.com>"

COPY ./redis.conf /etc/redis.conf
COPY itopplusRedis.sh /usr/local/bin/itopplusRedis.sh
COPY disable-transparent-hugepages.sh /etc/init.d/disable-transparent-hugepages
RUN chmod 755 /etc/init.d/disable-transparent-hugepages
RUN update-rc.d disable-transparent-hugepages defaults
WORKDIR /usr/local/bin
RUN chmod 755 itopplusRedis.sh
CMD ["./itopplusRedis.sh"]

