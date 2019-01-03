FROM grabpress/kubectl as kubectl

FROM alpine:3.8

RUN apk add --no-cache \
    bash \
    curl \
    git \
    openssh-client

COPY --from=kubectl /usr/local/bin/* /usr/local/bin/

ENV HELM_VERSION="2.12.1"

RUN curl -L https://kubernetes-helm.storage.googleapis.com/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar -xvz && \
    mv linux-amd64/helm /usr/local/bin && \
    cd && \
    rm -rf /tmp/* /var/cache/apk/*

