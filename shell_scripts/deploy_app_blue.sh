#!/usr/bin/env bash

# Get Nodes details
echo "Node details:"
/.kubectl get nodes

# Create the deployment and loadbalancer
echo "Deploy app:"
/.kubectl apply -f manifests/deploy_blue.yml

# # Get details for loadbalancer
echo "Loadbalancer details:"
/.kubectl get service/loadbalancer-service

# # Get details for deployment
echo "Deploy, Pod details:"
/.kubectl get deploy,rs,svc,pods