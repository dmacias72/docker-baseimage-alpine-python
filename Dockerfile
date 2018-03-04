FROM alpine:3.7

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
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["speedtest-cli"]