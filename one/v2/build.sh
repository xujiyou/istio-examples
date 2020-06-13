#!/usr/bin/env bash

go build -o one-v2

docker build -t registry.prod.bbdops.com/common/one-v2:v0.0.1  ./
docker push registry.prod.bbdops.com/common/one-v2:v0.0.1
