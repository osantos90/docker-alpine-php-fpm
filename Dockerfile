FROM alpine:3.3

RUN \
    adduser -S -D www-data && \
    apk add --no-cache php-fpm

ADD php-fpm.conf /etc/php/

EXPOSE 9000

CMD ["php-fpm"]