#!/usr/bin/env bash

kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=gcr.io/google-samples/kubernetes-bootcamp:v10

kubectl get deployments

kubectl get pods

kubectl describe pods

kubectl rollout undo deployments/kubernetes-bootcamp

kubectl delete deployments/kubernetes-bootcamp services/kubernetes-bootcamp