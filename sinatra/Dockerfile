FROM ubuntu:14.04
MAINTAINER zhangwq "zwq4work@gmail.com"
ENV REFESHED_AT 20181101

RUN apt-get -yqq update && apt-get -yqq install wget curl gnupg2  libcurl3 build-essential redis-tools
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

RUN cd /tmp \
    wget  http://ftp.ruby-lang.org/pub/ruby/2.5/ruby-2.5.0.tar.gz \
    tar -xvzf ruby-2.5.0.tar.gz \
    cd ruby-2.5.0/ && ./configure --prefix=/usr/local; make; make install \
    ruby -v

RUN ln -s   /usr/local/bin/ruby /usr/bin/ruby

RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD [ "/opt/webapp/bin/webapp" ]

