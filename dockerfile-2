FROM centos:7

RUN yum install epel-release -y
RUN yum install java-11-openjdk -y
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz
RUN tar -xzvf apache-tomcat* -C /opt
RUN cd /opt/apache*
RUN cd webapps/
RUN curl -O https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war
RUN cd ../bin

CMD ./catlina.sh run 
