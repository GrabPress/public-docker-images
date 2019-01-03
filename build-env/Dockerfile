FROM elixir:1.7.3-alpine

RUN apk add --no-cache \
    bash \
    git \
    make \
    g++ \
    curl \
    inotify-tools \
    nodejs \
    openssh-client

RUN mkdir /opt

## Install Yarn from release
ENV YARN_VERSION="1.9.4"

ENV PATH /opt/yarn/bin:$PATH

RUN curl -L https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz -o /tmp/yarn.tar.gz && \
    tar -xzf /tmp/yarn.tar.gz -C /tmp/ && \
    rm /tmp/yarn.tar.gz && \
    mv /tmp/yarn-v"${YARN_VERSION}"/ /opt/yarn && \
    yarn --version

ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.utf-8"

RUN mix local.hex --force && \
    mix local.rebar --force

