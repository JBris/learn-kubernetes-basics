#!/usr/bin/env bash

mkdir -p configure-pod-container/configmap/

wget https://kubernetes.io/examples/configmap/game.properties -O configure-pod-container/configmap/game.properties
wget https://kubernetes.io/examples/configmap/ui.properties -O configure-pod-container/configmap/ui.properties

kubectl create configmap game-config --from-file=configure-pod-container/configmap/

kubectl describe configmaps game-config

kubectl get configmaps game-config -o yaml

kubectl create configmap game-config-2 --from-file=configure-pod-container/configmap/game.properties

kubectl create configmap game-config-2 --from-file=configure-pod-container/configmap/game.properties --from-file=configure-pod-container/configmap/ui.properties

kubectl create configmap game-config-env-file \
       --from-env-file=configure-pod-container/configmap/game-env-file.properties

kubectl get configmap config-multi-env-files -o yaml

kubectl apply -k .