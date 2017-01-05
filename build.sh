#!/bin/bash

set -ex

# Statically compile the golang app
# use this if you have GO in your system
#CGO_ENABLED=0 GOOS=linux go build -a --installsuffix cgo --ldflags="-s" -o app-builder
# or this if you do not have Go locally and prefer to use a docker image for building too
docker run --rm -it -v "$GOPATH":/go -v "$(pwd)":/app -e "GOPATH=/go" -w /app golang:1.7 sh -c 'CGO_ENABLED=0 GOOS=linux go build -a --installsuffix cgo --ldflags="-s" -o application-main'

# build the docker image with just the built binary
docker build -t lp/application-main -f Dockerfile .

# Run with the following command
echo -e "Run using:\ndocker run --rm -it lp/application-main"