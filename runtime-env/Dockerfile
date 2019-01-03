FROM alpine:3.8

RUN apk --no-cache add \
    bash \
    openssl \
    g++

ENV HOME="/opt/app" \
    SHELL="/bin/bash" \
    REPLACE_OS_VARS="true" \
    PHOENIX_HOST="localhost" \
    PORT="4000" \
    DISTILLERY_TOML_DIR="/data/config"

EXPOSE $PORT

WORKDIR $HOME

