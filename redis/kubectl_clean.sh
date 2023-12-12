#!/usr/bin/env bash

kubectl delete pod/redis configmap/example-redis-config

kubectl delete pod redis

kubectl delete pod/redis configmap/example-redis-config