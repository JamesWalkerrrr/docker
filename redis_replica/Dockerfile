FROM joooohnson/redis_base
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-8-21

ENTRYPOINT [ "redis-server","--logfile /var/log/redis/redis-replica.log","--slaveof redis_primary 6379" ]

