FROM alpine

RUN apk add --update curl apache2-utils nodejs supervisor && rm -rf /var/cache/apk/*
COPY supervisord.conf /etc/supervisord.conf
RUN npm i -g http-server

EXPOSE 8080

ENTRYPOINT ["/usr/bin/supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
