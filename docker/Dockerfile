FROM docker:18.09.0

RUN apk add --no-cache \
    bash \
    curl \
    git \
    openssh-client \
    python3 \
    py3-pip

ENV DOCKER_COMPOSE_VERSION 1.18.0

RUN pip3 install docker-compose==${DOCKER_COMPOSE_VERSION}

