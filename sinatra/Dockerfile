FROM centos:centos7
MAINTAINER  joooohnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-08-01
RUN yum -y update;yum clean all
RUN yum -y install epel-release tar;yum clean all
RUN yum -y groupinstall "Development Tools"
RUN yum -y install ruby-devel ruby-docs ruby-ri ruby-rdoc
RUN yum -y rubygems
RUN gem source --add https://gems.ruby-china.org/ && gem source --remove https://rubygems.org/

