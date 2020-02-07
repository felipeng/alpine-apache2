FROM alpine:latest

RUN apk update && \
    apk add apache2 apache2-ctl php7 php7-apache2

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
WORKDIR /var/www/localhost/htdocs
CMD ["/docker-entrypoint.sh"]
#USER apache
