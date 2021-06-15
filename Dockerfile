FROM alpine:latest

RUN apk --update add git
RUN apk add --update nodejs nodejs-npm
RUN apk add --no-cache --upgrade bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
