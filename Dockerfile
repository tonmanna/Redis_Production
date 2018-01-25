FROM alpine:3.4
RUN apk add --no-cache redis sed bash
LABEL EMAIL="IT_TEAM <it@itopplus.com>"
COPY ./redis.conf /etc/redis.conf
COPY itopplusRedis.sh /usr/local/bin/itopplusRedis.sh
WORKDIR /usr/local/bin
RUN chmod 755 itopplusRedis.sh
CMD ["./itopplusRedis.sh"]

