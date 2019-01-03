FROM alpine:3.8

RUN apk add --no-cache \
    bash \
    curl \
    git \
    openssh-client

ENV K8S_VERSION="1.13.1"

RUN cd /tmp && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/ && \
    rm -rf /tmp/*

