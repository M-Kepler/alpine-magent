FROM frolvlad/alpine-glibc:latest

COPY magent-0.6/magent /usr/bin/magent

COPY docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
