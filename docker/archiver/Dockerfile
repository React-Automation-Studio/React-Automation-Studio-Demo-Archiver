FROM ubuntu:18.04
WORKDIR /archiver
RUN apt-get update

RUN apt-get install -y wget  autoconf libtool check patch build-essential libreadline-gplv2-dev re2c libxml2-dev python mysql-server

WORKDIR /install

RUN wget https://download.java.net/openjdk/jdk12/ri/openjdk-12+32_linux-x64_bin.tar.gz --no-check-certificate 
RUN tar -xvf openjdk-12+32_linux-x64_bin.tar.gz
ENV PATH /install/jdk-12/bin/:$PATH

WORKDIR /archiver/install
RUN wget https://github.com/slacmshankar/epicsarchiverap/releases/download/v0.0.1_SNAPSHOT_13-Nov-2019/archappl_v0.0.1_SNAPSHOT_13-November-2019T15-45-42.tar.gz --no-check-certificate


RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.20/bin/apache-tomcat-9.0.20.tar.gz --no-check-certificate
RUN tar -xvf archappl_v0.0.1_SNAPSHOT_13-November-2019T15-45-42.tar.gz
RUN wget https://cdn.mysql.com//Downloads/Connector-J/mysql-connector-java-5.1.49.tar.gz --no-check-certificate
RUN tar -xvf mysql-connector-java-5.1.49.tar.gz
ADD ./archiver/scripts/single_machine_install.sh /archiver/install/install_scripts/
ADD ./archiver/scripts/sampleStartup.sh /archiver/install/install_scripts/
WORKDIR /archiver/install/install_scripts/
ENV JAVA_HOME /install/jdk-12/
ENV DEPLOY_DIR /archiver
ENV TOMCAT_DISTRIBUTION /archiver/install/apache-tomcat-9.0.20.tar.gz
ENV MYSQL_CLIENT_JAR /archiver/install/mysql-connector-java-5.1.49/mysql-connector-java-5.1.49-bin.jar
ENV FQ_HOSTNAME localhost
ENV MYSQL_CONNECTION_STRING  --host=127.0.0.1 --user=root --password=archappl --database=archappl
CMD ./single_machine_install.sh
#CMD ./quickstart.sh apache-tomcat-9.0.20.tar.gz 


EXPOSE 17665 3306 8001 5064