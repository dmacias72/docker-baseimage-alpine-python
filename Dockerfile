FROM lsiobase/alpine:3.7

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="dmacias72 version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="Stian Larsen,sparklyballs,aptalca,dmacias72"

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
 apk add --no-cache \
    ca-certificates \
    python3 \
    py3-openssl && \
 echo "**** install speedtest-cli package ****" && \
 pip3 install --no-cache-dir -U \
    speedtest-cli

# add local files
COPY /root /

#ENTRYPOINT ["docker-entrypoint.sh"]

#CMD ["speedtest-cli"]