#!/bin/bash

helm uninstall prometheus
kubectl delete -f ./grafana-tls-secret.yaml
kubectl delete -f ./grafana-ingress.yaml
