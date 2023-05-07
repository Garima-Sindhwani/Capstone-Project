#!/usr/bin/env bash

CLUSTER_NAME=capstone-cluster
REGION=us-east-1

if /.eksctl utils describe-stacks --region=${REGION} --cluster=${CLUSTER_NAME} | grep -q ${CLUSTER_NAME}; then
    echo "Cluster already exists!"
else
    echo "Creating Cluster..."
    /.eksctl create cluster --name ${CLUSTER_NAME} --region=${REGION}
    echo "Cluster Created."
fi