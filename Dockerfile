FROM ubuntu:22.04

# renovate: release=jammy depName=nginx
ARG NGINX_VERSION=1.18.0-6ubuntu14.5

RUN apt-get update \
 && apt-get install -y \
    nginx=$NGINX_VERSION \
 && rm -rf /var/lib/apt/lists/*
