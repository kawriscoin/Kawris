#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-kawrispay/kawrisd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/kawrisd docker/bin/
cp $BUILD_DIR/src/kawris-cli docker/bin/
cp $BUILD_DIR/src/kawris-tx docker/bin/
strip docker/bin/kawrisd
strip docker/bin/kawris-cli
strip docker/bin/kawris-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
