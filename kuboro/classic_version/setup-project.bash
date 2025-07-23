#!/bin/bash

kubectl apply -f ./init
kubectl apply -f ./volumes
kubectl apply -f ./application/database
kubectl apply -f ./application/restore-job.yaml
kubectl wait --for=condition=complete job/orocommerce-restore-job -n orocommerce --timeout=-1s
kubectl apply -f ./application
kubectl delete -f ./application/restore-job.yaml