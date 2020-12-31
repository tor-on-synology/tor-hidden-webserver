FROM alpine:latest
ENV LIGHTTPD_VERSION=1.4.55-r1

RUN apk add --update --no-cache \
	lighttpd=${LIGHTTPD_VERSION} \
	supervisor \
	bash \
	nano \
  && rm -rf /var/cache/apk/*
  
RUN apk update \
 && apk upgrade \
 && apk add tor --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/community/ --allow-untrusted \
 && rm /var/cache/apk/*

COPY etc/lighttpd/* /etc/lighttpd/
COPY torrc /etc/tor/torrc
COPY supervisord.conf /etc/supervisord.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY index.html /var/www/index.html

VOLUME /var/www/

USER root

CMD ["/usr/bin/supervisord"]
