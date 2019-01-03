# GrabPress Public Docker Images
These Docker images are what we use for local development, CI, etc

## Pull published images
```
docker pull grabpress/docker
docker pull grabpress/kubectl
docker pull grabpress/helm
docker pull grabpress/build-env
docker pull grabpress/ci-env
```

## Build them locally
```
make build
```

## Build with a tag
```
make build DOCKER_TAG=example
```

## Push your own repo
```
make build DOCKER_REPO=gcr.io/example-project
make push DOCKER_REPO=gcr.io/example-project
```

