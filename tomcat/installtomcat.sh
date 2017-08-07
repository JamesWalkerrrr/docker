#! /bin/bash
#下载指定版本的tomcat
#1.下载jdk（oracle官网下载，需要跳过oracle验证）
mkdir /opt/source
wget -P /opt/source --no-check-certificate --no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz

#2.下载tomcat
wget -P /opt/source http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz

#3.解压jdk
tar -zxvf /opt/source/jdk-8u144-linux-x64.tar.gz -C /opt/

#4.申明JAVA_HOME变量，并将其声明为全局变量
echo 'export JAVA_HOME=/opt/jdk1.8.0_144' >> ~/.bashrc
export JAVA_HOME=/opt/jdk1.8.0_144

#5.安装tomcat
useradd tomcat
tar -zxvf /opt/source/apache-tomcat-8.0.45.tar.gz -C /opt

ln -s /opt/apache-tomcat-8.0.45 /home/tomcat/tomcat

export CATALINA_HOME="/home/tomcat/tomcat"
export CATALINA_BASE="/home/tomcat/tomcat"

echo 'export CATALINA_HOME="/home/tomcat/tomcat"' >> ~/.bashrc
echo 'export CATALINA_BASE="/home/tomcat/tomcat"' >> ~/.bashrc


#6.启动tomcat
/home/tomcat/tomcat/bin/startup.sh


#7.测试没问题后，若想关闭tomcat
/home/tomcat/tomcat/bin/shutdown.sh



##优化tomcat服务启动
#		1）cd /home/tomcat/tomcat/bin
#		找到commons-daemon-native.tar.gz并解压
#		  cd   /home/tomcat/tomcat/bin/commons-daemon-1.0.15-native-src/unix
#	           ./configure -------------> 执行 configure 检测程序，一般需要安装gcc
#		   check成功后---------------> make （执行 make 程序编译,将源代码编译成二进制。编译过程中会调用 Makefile 文件）---------> 得到 jsvc命令
#		  cp jsvc到tomcat的bin目录下 ---------> 这个命令可以实现父进程root，子进程tomcat
#
#		2） 编辑 daemon.sh 文件,将之前临时声明的 JAVA_HOME、CATALINA_HOME、CATALINA_BASE 变量再该文件中声明,以便永久生效,并且可以在启动 tomcat 服务时自动声明。
#			ln -s /home/tomcat/tomcat/bin/startup.sh /bin/tomcat_startup
			ln -s /home/tomcat/tomcat/bin/shutdown.sh /bin/tomcat_shutdown
#
#		注：如果页面出现空白页，是由于主程序目录下的UGO权限导致。
