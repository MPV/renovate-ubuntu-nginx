FROM ubuntu:24.04@sha256:72297848456d5d37d1262630108ab308d3e9ec7ed1c3286a32fe09856619a782

# renovate: release=bullseye depName=gcc-11
ARG NGINX_VERSION=1.18.0-6ubuntu14.5

RUN apt-get update \
 && apt-get install -y \
    nginx=$NGINX_VERSION \
 && rm -rf /var/lib/apt/lists/*

