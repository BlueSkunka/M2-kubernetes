#!/bin/bash

kubectl apply -f ./init
kubectl apply -f ./tls
kubectl apply -f ./volumes
kubectl apply -f ./application/database
kubectl apply -f ./application/app-restore-job.yaml
kubectl wait --for=condition=complete job/orocommerce-app-restore-job -n orocommerce --timeout=1h
kubectl apply -f ./application
kubectl delete -f ./application/app-restore-job.yaml