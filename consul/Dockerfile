FROM ubuntu:14.04
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-09-18

RUN apt-get -y update
RUN apt-get -y install curl unzip wget

RUN wget -O /tmp/consul.zip https://releases.hashicorp.com/consul/0.7.2/consul_0.7.2_linux_amd64.zip
RUN cd /usr/sbin && unzip /tmp/consul.zip && chmod +x /usr/sbin/consul && rm /tmp/consul.zip

RUN mkdir /tmp/dist
RUN wget -O /tmp/webui.zip https://releases.hashicorp.com/consul/0.7.2/consul_0.7.2_web_ui.zip
RUN cd /tmp/ && unzip webui.zip && mv index.html static /tmp/dist/

ADD consul.json /config/

EXPOSE 53/udp 8300 8301 8301/udp 8302 8302/udp 8400 8500

VOLUME ["/data"]

ENTRYPOINT [ "/usr/sbin/consul","agent","-config-dir=/config" ]
CMD []

