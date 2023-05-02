#!/usr/bin/env bash

echo "Building docker image"
# Build image and add a descriptive tag
docker build -t sample-capstone-app .

echo "Listing docker images"
# List docker images
docker images

# Run flask app
#docker run -p 8000:8080 sample-capstone-app