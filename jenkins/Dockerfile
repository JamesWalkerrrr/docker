FROM jenkins
MAINTAINER james@example.com
ENV REFRESHED_AT 2018-11-19

USER root
RUN rm /usr/share/jenkins/jenkins.war
ADD jenkins.war /usr/share/jenkins/jenkins.war
#RUN java -jar /usr/share/jenkins/jenkins.war

RUN apt-get -qq update && apt-get install -qq sudo
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN wget http://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin/

USER jenkins
RUN /usr/local/bin/install-plugins.sh junit git git-client ssh-slaves greenballs chucknorris ws-cleanup
ENTRYPOINT java -jar /usr/share/jenkins/jenkins.war
