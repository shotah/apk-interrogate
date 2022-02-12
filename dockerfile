FROM alpine:latest

RUN apk add --no-cache -U \
    openssl \
    imagemagick \
    file \
    lsof \
    su-exec \
    coreutils \
    findutils \
    shadow \
    bash \
    curl \
    iputils \
    git \
    jq \
    mysql-client \
    tzdata \
    rsync \
    nano \
    sudo \
    knock \
    ttf-dejavu \
    tar \
    zstd

# ENTRYPOINT ["/bin/bash"]
CMD ["/bin/bash"]
