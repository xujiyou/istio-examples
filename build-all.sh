#!/usr/bin/env bash

cd one/v1 && sh build.sh
cd ../../one/v2 && sh build.sh
cd ../../two/v1 && sh build.sh
cd ../../two/v2 && sh build.sh