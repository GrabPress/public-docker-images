FROM elixir:1.7.4-alpine

RUN apk --no-cache add \
    bash \
    openssl

ENV HOME="/opt/app" \
    SHELL="/bin/bash" \
    REPLACE_OS_VARS="true" \
    PHOENIX_HOST="localhost" \
    PORT="4000" \
    DISTILLERY_TOML_DIR="/data/config" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.utf-8" \
    TERM="xterm-256color"

RUN mkdir -p $HOME

WORKDIR $HOME

EXPOSE $PORT

