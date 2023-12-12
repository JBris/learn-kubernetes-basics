#!/usr/bin/env bash

PODE_NAME=$1

kubectl get pods

kubectl describe pods

kubectl logs $PODE_NAME

kubectl exec $POD_NAME -- ls

curl http://localhost:8001

curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME:8080/proxy/