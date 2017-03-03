#!/bin/bash

set -ex

pushd ansible
docker build -t versity-ansible:2 .

pushd onbuild
docker build -t versity-ansible:2-onbuild .

popd
popd

for pyv in "2.7" "3.6"; do
    pushd "python/$pyv"
    docker build -t "versity-python:$pyv" .

    pushd devel
    docker build -t "versity-python:$pyv-devel" .

    popd; popd
done
