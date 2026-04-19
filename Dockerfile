FROM ubuntu:24.04@sha256:c4a8d5503dfb2a3eb8ab5f807da5bc69a85730fb49b5cfca2330194ebcc41c7b

# renovate: datasource=deb depName=nginx versioning=loose
ENV NGINX_VERSION="1.26.0-1~jammy"

RUN apt-get update \
  && apt-get install -y \
    curl \
    gnupg2 \
    locales \
    logrotate \
    tzdata \
  && curl -s https://nginx.org/keys/nginx_signing.key | gpg --dearmor > /etc/apt/trusted.gpg.d/nginx.gpg \
  && echo "deb [arch=amd64,arm64 signed-by=/etc/apt/trusted.gpg.d/nginx.gpg] http://nginx.org/packages/ubuntu jammy nginx" > /etc/apt/sources.list.d/nginx.list \
  && apt-get update \
  && apt-get install -y nginx=${NGINX_VERSION} \
  && rm -rf /var/lib/apt/lists/*