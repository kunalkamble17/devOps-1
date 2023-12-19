FROM centos:7

RUN yum install epel-release -y
RUN yum install java-11-openjdk -y 
ENV DB_USER=admin
ARG DB_PASSWORD
# USER Student
ADD  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz ./
RUN tar -xzvf apache-tomcat-8.5.97.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-85.97
COPY ./student.war webapps/student.war
WORKDIR ./bin
EXPOSE 8080

CMD ./catalina.sh run
