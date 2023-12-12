#!/usr/bin/env bash

kubectl apply -f service/load-balancer-example.yaml

kubectl get deployments hello-world
kubectl describe deployments hello-world

kubectl get replicasets
kubectl describe replicasets

kubectl expose deployment hello-world --type=LoadBalancer --name=my-service

kubectl get services my-service

kubectl describe services my-service

kubectl get pods --output=wide