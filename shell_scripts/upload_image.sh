docker images

echo "password: $1"

dockerpath="gsindhwani/sample-capstone-app"
echo "Dockerpath: $dockerpath"

# Login to docker hub
docker login -u "gsindhwani" -p $1

# Push image to a docker repository
docker push $dockerpath:latest