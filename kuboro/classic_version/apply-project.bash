#!/bin/bash

kubectl apply -f ./init
kubectl apply -f ./tls
kubectl apply -f ./volumes
kubectl apply -f ./application

# kubectl apply -f ./init
# kubectl apply -f ./tls
# kubectl apply -f ./volumes
# kubectl apply -f ./application/postgre-statefulset.yaml
# kubectl apply -f ./application/postgre-service.yaml
# kubectl apply -f ./application/app-restore-job.yaml