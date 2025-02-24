FROM ubuntu:22.04@sha256:ed1544e454989078f5dec1bfdabd8c5cc9c48e0705d07b678ab6ae3fb61952d2

# renovate: release=bullseye depName=gcc-11
ARG NGINX_VERSION=1.18.0-6ubuntu14.5

RUN apt-get update \
 && apt-get install -y \
    nginx=$NGINX_VERSION \
 && rm -rf /var/lib/apt/lists/*

