#!/usr/bin/env bash

kubectl expose deployment hello-node --type=LoadBalancer --port=8080

kubectl get services

minikube service hello-node