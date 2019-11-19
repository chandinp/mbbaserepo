#!/bin/bash
mkdir /etc/ssl/certs
mkdir /etc/ssl/private
chmod 700 /etc/ssl/private
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=US/ST=Texas/L=Dallas/O=nodejs/OU=Dev/CN=chandinp.myinstance.com/emailAddress=chandinp@amazon.com"
