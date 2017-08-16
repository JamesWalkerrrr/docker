FROM ubuntu:14.04
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-08-16

RUN apt-get -y update
RUN apt-get -y install wget 

VOLUME [ "/var/lib/tomcat/webapps/" ]
WORKDIR /var/lib/tomcat/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "-?" ]



##chakan rongqi zhong volume juan de lujing:
##docker inspect -f "{{range .Mounts}}{{.}}{{end}}" containerName
