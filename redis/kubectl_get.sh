#!/usr/bin/env bash

kubectl get pod/redis configmap/example-redis-config 

kubectl describe configmap/example-redis-config

kubectl exec -it redis -- redis-cli

# CONFIG GET maxmemory

kubectl apply -f pods/config/example-redis-config.yaml