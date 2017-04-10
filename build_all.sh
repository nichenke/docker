#!/bin/bash

set -ex

# NOTE: using push requires the user to have first done a 'docker login' to authenticate with
# docker.io (Docker Hub)
DOCKER_PUSH=${DOCKER_PUSH:-false}

pushd ansible
docker build -t versity/ansible:2 .
if $DOCKER_PUSH; then
    docker push versity/ansible:2
fi

pushd onbuild
docker build -t versity/ansible:2-onbuild .
if $DOCKER_PUSH; then
    docker push versity/ansible:2-onbuild
fi

popd
popd

for pyv in "2.7" "3.6"; do
    pushd "python/$pyv"
    docker build -t "versity/python:$pyv" .

    pushd devel
    docker build -t "versity/python:$pyv-devel" .

    if $DOCKER_PUSH; then
        docker push "versity/python:$pyv"
        docker push "versity/python:$pyv-devel"
    fi

    popd; popd
done

pushd libarchive
docker build -t "versity/libarchive:c7-build" .
docker push "versity/libarchive:c7-build"
popd
