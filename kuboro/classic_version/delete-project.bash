#!/bin/bash

kubectl delete -f ./application/database
kubectl delete -f ./application
kubectl delete -f ./volumes
kubectl apply -f ./tls
curl -skSL https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/v4.11.0/deploy/uninstall-driver.sh | bash -s v4.11.0 --
kubectl delete -f ./nfs_server
kubectl delete -f ./init
