#!/bin/bash

helm uninstall -n monitoring prometheus
kubectl delete -f grafana-tls-secret.yaml
