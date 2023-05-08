#!/usr/bin/env bash

# Create the deployment and loadbalancer
echo "Deploy updated app:"
/.kubectl set image deployment.apps/server  back-end=gsindhwani/sample-capstone-app-updated

# # Get details for loadbalancer
echo "Loadbalancer details:"
/.kubectl get service/loadbalancer-service

# # Get details for deployment
echo "Deploy, Pod details:"
/.kubectl get deploy,rs,svc,pods