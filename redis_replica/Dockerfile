FROM joooohnson/redis_base
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-8-21

WORKDIR /etc/redis/

RUN sed -i 's/# slaveof <masterip> <masterport>/slaveof 172.17.0.1 7001/g' /etc/redis/redis.conf

WORKDIR /
ENTRYPOINT [ "/usr/bin/redis-server","/etc/redis/redis.conf","--logfile /var/log/redis/redis-replica.log" ]

