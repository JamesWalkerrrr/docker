FROM ubuntu:14.04
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-8-23


RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y gcc wget make

RUN wget -P /opt/ https://github.com/antirez/redis/archive/3.0.0-rc1.tar.gz 

RUN tar -zxvf /opt/3.0.0-rc1.tar.gz -C /opt/

RUN cd /opt/redis-3.0.0-rc1

WORKDIR /opt/redis-3.0.0-rc1

RUN make

WORKDIR /opt/redis-3.0.0-rc1/src
RUN mv redis-cli redis-server redis-sentinel /usr/bin/

WORKDIR /opt/redis-3.0.0-rc1

RUN mkdir /etc/redis -p
RUN cp -r redis.conf /etc/redis/
#RUN sed -i 's/daemonize no/daemonize yes/g' /etc/redis/redis.conf

VOLUME [ "/var/log/redis" ]


WORKDIR /
#ENTRYPOINT [ "/usr/bin/redis-server","/etc/redis/redis.conf" ]


EXPOSE 6379
