FROM centos:centos7
MAINTAINER joooohnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-08-04
RUN yum -y update;yum clean all
RUN yum -y install epel-release tar;yum clean all
RUN yum -y install ruby rake
RUN yum -y groupinstall "Development Tools"
RUN yum -y install rubygems
RUN gem source --add https://gems.ruby-china.org/ && gem source --remove https://rubygems.org
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec
