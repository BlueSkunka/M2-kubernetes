#!/bin/bash

kubectl apply -f ./init
kubectl apply -f ./tls
kubectl apply -f ./volumes
kubectl apply -f ./application