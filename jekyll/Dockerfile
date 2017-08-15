FROM ubuntu:14.04
MAINTAINER johnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-08-11
RUN apt-get -y update
RUN apt-get install -y build-essential openssl curl libcurl3-dev libreadline6 libreadline6-dev git zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf automake libtool imagemagick libmagickwand-dev libpcre3-dev libsqlite3-dev
ADD ./ruby-2.4.1.tar.gz /tmp
#RUN gem source --add https://gems.ruby-china.org/ && gem source --remove https://rubygems.org/
#RUN gem source -c && gem source -u
RUN cd /tmp/ruby-2.4.1
RUN ./tmp/ruby-2.4.1/configure
RUN make
RUN make install
RUN gem install --no-rdoc --no-ri jekyll -v 2.5.3

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll","build","--destination=/var/www/html" ]
