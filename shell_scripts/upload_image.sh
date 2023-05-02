docker_password = $1
echo $docker_password

dockerpath="gsindhwani/sample-capstone-app"

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag sample-capstone-app $dockerpath

docker login -u "gsindhwani" --password

# Push image to a docker repository
docker push $dockerpath