FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y curl nginx

ADD certs.sh /certs.sh

RUN chmod 744 /certs.sh
RUN /certs.sh
