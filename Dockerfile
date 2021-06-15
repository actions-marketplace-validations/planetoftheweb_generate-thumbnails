FROM alpine:latest

RUN apk --update add git

RUN echo "${ALPINE_MIRROR}/edge/main" >> /etc/apk/repositories

RUN apk add --update nodejs nodejs-npm
RUN node --version

RUN apk add --no-cache --upgrade bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
