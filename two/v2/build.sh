#!/usr/bin/env bash

go build -o two-v2

docker build -t registry.prod.bbdops.com/common/two-v2:v0.0.2  ./
docker push registry.prod.bbdops.com/common/two-v2:v0.0.2
