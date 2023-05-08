#!/usr/bin/env bash

echo "Building docker image"
# Build image and add a descriptive tag
docker build -t gsindhwani/sample-capstone-app .

echo "Listing docker images"
# List docker images
docker images
