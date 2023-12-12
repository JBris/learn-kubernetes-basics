#!/usr/bin/env bash

kubectl get deployments

kubectl get rs

kubectl scale deployments/kubernetes-bootcamp --replicas=4

kubectl get deployments

kubectl get pods -o wide

kubectl describe deployments/kubernetes-bootcamp

kubectl describe services/kubernetes-bootcamp 

export NODE_PORT="$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')"

echo NODE_PORT=$NODE_PORT

curl http://"$(minikube ip):$NODE_PORT"

kubectl scale deployments/kubernetes-bootcamp --replicas=2

kubectl get deployments

kubectl get pods -o wide