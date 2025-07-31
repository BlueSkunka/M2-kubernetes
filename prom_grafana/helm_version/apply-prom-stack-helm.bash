#!/bin/bash

kubectl create namespace monitoring
kubectl apply -f grafana-tls-secret.yaml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install -n monitoring -f values.yaml prometheus prometheus-community/kube-prometheus-stack