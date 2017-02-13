FROM    node:7-alpine
MAINTAINER Janusz Korczak <januszkorczak128@gmail.com>

WORKDIR /opt

RUN apk add --update ca-certificates wget && \
    update-ca-certificates && \
    wget https://github.com/etsy/statsd/archive/master.zip && \
    unzip master.zip && \
    rm -f master.zip && \
    mv /opt/statsd-master /opt/statsd && \
    npm install -g generic-pool && \
    mkdir /etc/statsd

ADD config.js /etc/statsd/config.js

EXPOSE 8125/udp

CMD [ "/usr/local/bin/node", "/opt/statsd/stats.js", "/etc/statsd/config.js" ]
