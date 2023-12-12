#!/usr/bin/env bash

kubectl get pods

kubectl describe pods

kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:v2

kubectl describe services/kubernetes-bootcamp
