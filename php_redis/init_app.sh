#!/usr/bin/env bash

kubectl apply -f application/guestbook/redis-leader-deployment.yaml

kubectl apply -f application/guestbook/redis-leader-service.yaml

kubectl apply -f application/guestbook/redis-follower-deployment.yaml

kubectl apply -f application/guestbook/redis-follower-service.yaml

kubectl apply -f application/guestbook/frontend-deployment.yaml

kubectl apply -f application/guestbook/frontend-service.yaml

kubectl get pods -l app=guestbook -l tier=frontend

kubectl get pods

# kubectl logs -f deployment/redis-leader

kubectl port-forward svc/frontend 8080:80

kubectl get service

kubectl get service frontend