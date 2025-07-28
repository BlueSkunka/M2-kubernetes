#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack
kubectl apply -f ./tls/grafana-tls-secret.yaml
kubectl apply -f ./application/grafana-ingress.yaml
kubectl apply -f ./init
kubectl apply -f ./tls
kubectl apply -f ./volumes
kubectl apply -f ./application