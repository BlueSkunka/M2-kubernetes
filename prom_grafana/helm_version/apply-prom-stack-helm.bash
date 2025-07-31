#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install -n monitoring --create-namespace -f values.yml prometheus prometheus-community/kube-prometheus-stack