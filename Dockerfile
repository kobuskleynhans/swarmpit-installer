FROM docker:stable-dind
MAINTAINER Pavol Noha <pavol.noha@gmail.com>

RUN apk add --update git figlet curl jq && \
    rm -rf /var/cache/apk/*

WORKDIR /
ADD . /

ARG tag
ENV VERSION=$tag

ARG USE_HOST_TIME
ENV USE_HOST_TIME=$USE_HOST_TIME

CMD ["sh", "install.sh"]