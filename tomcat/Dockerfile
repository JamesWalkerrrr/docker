FROM ubuntu:14.04
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-08-16

RUN apt-get -y update 
RUN apt-get -y install wget

##download jdk && export jdk
RUN mkdir /opt/source

RUN wget -P /opt/source --no-check-certificate --no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz

RUN tar -zxvf /opt/source/jdk-8u144-linux-x64.tar.gz -C /opt/

ENV JAVA_HOME="/opt/jdk1.8.0_144"

##download tomcat
RUN wget -P /opt/source http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz

RUN tar -zxvf /opt/source/apache-tomcat-8.0.45.tar.gz -C /opt
RUN ln -s /opt/apache-tomcat-8.0.45 /var/lib/tomcat

ENV CATALINA_HOME="/var/lib/tomcat"
ENV CATALINA_BASE="/var/lib/tomcat"

VOLUME [ "/var/lib/tomcat/webapps" ]

EXPOSE 8080

ENTRYPOINT [ "/var/lib/tomcat/bin/catalina.sh","run" ]
