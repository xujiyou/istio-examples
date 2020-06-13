#!/usr/bin/env bash

go build -o one-v1

docker build -t registry.prod.bbdops.com/common/one-v1:v0.0.2  ./
docker push registry.prod.bbdops.com/common/one-v1:v0.0.2
