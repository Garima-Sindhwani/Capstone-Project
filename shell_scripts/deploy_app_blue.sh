#!/usr/bin/env bash

# Get Nodes details
kubectl get nodes

# Create the deployment and loadbalancer
kubectl apply -f manifests/deploy_blue.yml

# Get details for loadbalancer
kubectl get service/loadbalancer-service
# Get details for deployment
kubectl get deploy,rs,svc,pods