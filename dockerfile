FROM centos:7

LABEL author="kunal kamble"
LABEL description="my 1st dc file"

RUN yum install httpd -y
RUN echo "Hello Docker-Engine" > /var/www/html/index.html

CMD [ "httpd" -DFOREGROUND ]