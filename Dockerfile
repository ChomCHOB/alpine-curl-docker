FROM alpine:3.6

RUN set -ex; \
  apk add --update --no-cache curl; \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curl"]