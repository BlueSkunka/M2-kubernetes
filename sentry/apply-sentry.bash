#!/bin/bash

kubectl create namespace sentry-monitor
helm repo add sentry https://sentry-kubernetes.github.io/charts
helm install -n sentry-monitor -f values.yml sentry sentry/sentry --wait --timeout=1000s