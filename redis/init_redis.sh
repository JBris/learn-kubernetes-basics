#!/usr/bin/env bash

kubectl apply -f example-redis-config.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/pods/config/redis-pod.yaml