#!/bin/bash

kubectl delete -f ./application/database
kubectl delete -f ./application
kubectl delete -f ./volumes
kubectl delete -f ./init
