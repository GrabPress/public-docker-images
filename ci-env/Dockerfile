FROM grabpress/docker as docker

FROM grabpress/helm as helm

FROM google/cloud-sdk:228.0.0-alpine as gcloud

FROM grabpress/build-env

RUN apk add --no-cache \
    bash \
    curl \
    git \
    gnupg \
    libc6-compat \
    openssh-client \
    python \
    python3 \
    py-crcmod \
    py3-pip

ENV PATH /google-cloud-sdk/bin:$PATH

ENV GOOGLE_APPLICATION_CREDENTIALS="/root/.google_sa_key.json"

RUN ln -s /lib /lib64

ENV DOCKER_COMPOSE_VERSION 1.18.0

RUN pip3 install docker-compose==${DOCKER_COMPOSE_VERSION}

COPY --from=docker /usr/local/bin/* /usr/local/bin/

COPY --from=helm /usr/local/bin/* /usr/local/bin/

COPY --from=gcloud /google-cloud-sdk /google-cloud-sdk

COPY --from=gcloud /root/.config/gcloud /root/.config/gcloud


