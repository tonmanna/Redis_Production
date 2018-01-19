FROM redis:4

LABEL EMAIL="IT_TEAM <it@itopplus.com>"

COPY ./redis.conf /etc/redis.conf
COPY itopplusRedis.sh /usr/local/bin/itopplusRedis.sh

WORKDIR /usr/local/bin
RUN chmod 755 itopplusRedis.sh
RUN ls /usr/local/bin/
CMD ["./itopplusRedis.sh"]

