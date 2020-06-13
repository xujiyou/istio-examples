#!/usr/bin/env bash

kubectl apply -f one/one-service.yaml
kubectl apply -f one/one-deployment.yaml
kubectl apply -f two/two-service.yaml
kubectl apply -f two/two-deployment.yaml