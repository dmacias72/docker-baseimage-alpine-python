FROM lsiobase/alpine.nginx:3.7

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="dmacias72 version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="dmacias72"

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
 apk add --no-cache \
    curl \
    memcached \
    python2 \
    py2-openssl \
    py2-pip && \
 echo "**** install speedtest-cli package ****" && \
 pip install --no-cache-dir -U \
    speedtest-cli

# add local files
COPY root/ /
