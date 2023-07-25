FROM ubuntu:18.04
MAINTAINER shivani-31245
WORKDIR /tmp
RUN apt-get update -y
RUN apt-get install tree vim apache-2 curl -y
RUN echo "Simple Dockerfile for practise" >> /tmp/simple.xml
RUN mkdir simply 9
ENV name shivani
ENV java_home /tmp/java
COPY /mnt/sample.war /tmp
ADD /abc.tar.gz /tmp
CMD ping localhost -c 20       //shell format
ENTRYPOINT ["ping","localhost","-c","10"]      //exec format
RUN service apache-2 restart
COPY /mnt/index.html /var/www/html
EXPOSE 80
RUN echo "localhost" >> /etc/apache2/apache2.conf9
ENTRYPOINT ["/usr/sbin/apache2ctl","-D","FOREGROUND]

FROM nginx:alpine
ARG DOCKER_HOST
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN sed -i "s/localhost/${DOCKER_HOST}/g" /etc/nginx/nginx.conf
EXPOSE 80

