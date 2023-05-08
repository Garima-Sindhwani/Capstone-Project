docker images

echo "password: $1"

dockerpath="gsindhwani/sample-capstone-app"
updated_dockerpath="gsindhwani/sample-capstone-app-updated"
echo "Dockerpath: $dockerpath"

docker tag $dockerpath $updated_dockerpath

# Login to docker hub
docker login -u "gsindhwani" -p $1

# Push image to a docker repository
docker push $updated_dockerpath:latest