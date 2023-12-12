#!/usr/bin/env bash

kubectl describe services/kubernetes-bootcamp

export NODE_PORT="$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')"
echo "NODE_PORT=$NODE_PORT"

curl http://"$(minikube ip):$NODE_PORT"

kubectl rollout status deployments/kubernetes-bootcamp

kubectl describe pods