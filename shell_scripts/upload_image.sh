docker images

echo "password: $1"

dockerpath="gsindhwani/sample-capstone-app"

# Authenticate & tag
echo "Dockerpath: $dockerpath"

docker tag sample-capstone-app $dockerpath

docker login -u "gsindhwani" -p $1

# Push image to a docker repository
docker push $dockerpath