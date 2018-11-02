#Version:0.01
FROM ubuntu:14.04
MAINTAINER zhangwq "zhangwangqing@163.com"
RUN apt-get update && apt-get install -y nginx
RUN echo 'nginx container' > /usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT /usr/sbin/nginx && /bin/bash
