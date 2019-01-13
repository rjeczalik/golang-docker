# golang-docker

An official `golang` docker images with installed `docker` and `docker-compose` packages.

### Usage

The build.sh script builds golang-docker image and pushes it to hub.docker.io.

```bash
./build.sh rjeczalik/golang-docker 1.9.2 1.11.4 latest
```

To list all official golang tags:

```bash
./list.sh
```
