FROM alpine:latest

RUN apk update && \
    apk add apache2 apache2-ctl

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
