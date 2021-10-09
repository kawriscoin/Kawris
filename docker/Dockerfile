FROM debian:stretch
LABEL maintainer="Kawris Developers <dev@kawris.org>"
LABEL description="Dockerised KawrisCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
