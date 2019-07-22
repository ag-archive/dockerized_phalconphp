FROM debian:stretch
MAINTAINER alimguzhin@di.uniroma1.it

COPY *.sh /build/

RUN /build/prepare.sh && /build/phalconphp.sh && /build/cleanup.sh && rm -rf /build

EXPOSE 7777

CMD ["/usr/sbin/php7-fpm"]
