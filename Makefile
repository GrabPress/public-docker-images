# Make will use bash instead of sh
SHELL := /usr/bin/env bash

IMAGES = docker kubectl helm build-env ci-env
DOCKER_REPO := grabpress
DOCKER_TAG := latest

all: build

build: ; $(foreach IMAGE,$(IMAGES),(cd $(IMAGE) && docker build . -t ${DOCKER_REPO}/$(IMAGE):${DOCKER_TAG}) &&) :

push: ; $(foreach IMAGE,$(IMAGES),(docker push ${DOCKER_REPO}/$(IMAGE):${DOCKER_TAG}) &&) :

