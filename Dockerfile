FROM redis:7.0
# RUN apk add --no-cache redis sed bash
LABEL EMAIL="IT_TEAM <it@itopplus.com>"
COPY ./redis.conf /etc/redis.conf
COPY itopplusRedis.sh /usr/local/bin/itopplusRedis.sh
WORKDIR /usr/local/bin
COPY ./tests/tls /data/tls
# RUN mkdir /data
RUN chmod 755 itopplusRedis.sh
CMD ["./itopplusRedis.sh"]