FROM ubuntu:16.04

MAINTAINER Boro <docker@bo.ro>

RUN apt-get -qqy update
RUN apt-get -qqy upgrade
RUN apt-get -qqy install apache2-utils squid3
RUN mkdir /usr/etc
RUN mkdir -p /etc/squid3/

EXPOSE 3128
VOLUME /var/log/squid3

ADD init /init

#replace the squid config file
ADD squid.conf /etc/squid/squid.conf

# Convert any CRLF line endings to LF
RUN sed -i 's/\r//' /init

RUN chmod 777 /var/log/squid/ /init

CMD ["/init"]
