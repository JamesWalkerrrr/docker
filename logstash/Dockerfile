FROM ubuntu:14.04
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2018-08-30

RUN apt-get -y update
RUN apt-get -y install wget

RUN wget --no-check-certificate --no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz

RUN tar -zxvf jdk-8u144-linux-x64.tar.gz -C /opt/
ENV JAVA_HOME /opt/jdk1.8.0_144

RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch|apt-key add -
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' |tee /etc/apt/sources.list.d/logstash-2.2.x.list
RUN apt-get -y update
RUN apt-get -y install logstash

ADD logstash.conf /etc/

WORKDIR /opt/logstash

ENTRYPOINT [ "bin/logstash" ]

CMD [ "--config=/etc/logstash.conf" ] 

