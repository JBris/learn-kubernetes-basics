#!/usr/bin/env bash

kubectl describe deployment

kubectl get pods -l app=kubernetes-bootcamp

kubectl get services -l app=kubernetes-bootcamp

export POD_NAME="$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')"
echo "Name of the Pod: $POD_NAME"

kubectl label pods "$POD_NAME" version=v1

kubectl describe pods "$POD_NAME"

kubectl get pods -l version=v1

kubectl delete service -l app=kubernetes-bootcamp

kubectl exec -ti $POD_NAME -- curl http://localhost:8080