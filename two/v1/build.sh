#!/usr/bin/env bash

go build -o two-v1

docker build -t registry.prod.bbdops.com/common/two-v1:v0.0.1  ./
docker push registry.prod.bbdops.com/common/two-v1:v0.0.1
