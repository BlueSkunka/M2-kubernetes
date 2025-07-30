#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack
kubectl apply -f ./grafana-tls-secret.yaml
kubectl apply -f ./grafana-ingress.yaml
