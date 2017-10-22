FROM centos:centos7
MAINTAINER joooohnson "zhangwangqing@163.com"
ENV REFRESHED_AT 2017-08-01

RUN curl -o /etc/yum.repos.d/Centos-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN sed -i.bak 's#aliyun\.com#aliyuncs\.com#' /etc/yum.repos.d/Centos-Base.repo
RUN yum -y install wget
#RUN wget --no-check-certificate --no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
#RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.0.47/bin/apache-tomcat-8.0.47.tar.gz
#RUN wget http://mirror.bit.edu.cn/apache//ant/binaries/apache-ant-1.9.9-bin.tar.gz
COPY jdk-8u151-linux-x64.tar.gz /opt/
COPY apache-tomcat-8.0.47.tar.gz /opt/ 
COPY apache-ant-1.9.9-bin.tar.gz /opt/
RUN cd /opt
RUN tar -zvxf /opt/apache-tomcat-8.0.47.tar.gz -C /opt/
RUN tar -zvxf /opt/apache-ant-1.9.9-bin.tar.gz -C /opt/
RUN tar -zvxf /opt/jdk-8u151-linux-x64.tar.gz -C /opt/
ENV JAVA_HOME /opt/jdk-9.0.1
ENV ANT_HOME /opt/apache-ant-1.9.9
ENV CLASSPATH .:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $JAVA_HOME/bin:$ANT_HOME/bin:$PATH

#jiang jenkins war bao xiazai dao tomcatde moren de yingyong lujing 
RUN wget -P /opt/apache-tomcat-8.0.45/webapps http://updates.jenkins-ci.org/download/war/2.72/jenkins.war

#RUN yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common
#ENV LANG zh_CN.UTF-8
#RUN echo 'export LANG="zh_CN.UTF-8"' >> ~/.bashrc
#RUN yum install -y git 
CMD /opt/apache-tomcat-8.0.47/bin/catalina.sh run
#ADD ./dockerjenkins.sh /usr/local/bin/dockerjenkins.sh
#RUN chmod +x /usr/local/bin/dockerjenkins.sh
VOLUME /var/lib/docker
EXPOSE 8080
#ENTRYPOINT ["/usr/local/bin/dockerjenkins.sh"]
