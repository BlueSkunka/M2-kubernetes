#!/bin/bash

kubectl delete -f ./application
kubectl delete -f ./volumes
kubectl delete -f ./tls
kubectl delete -f ./init
