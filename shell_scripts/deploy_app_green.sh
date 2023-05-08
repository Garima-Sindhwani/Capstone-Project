deploy_name=/.kubectl get deploy -o=name
echo "deploy name: $deploy_name"
updated_dockerpath="gsindhwani/sample-capstone-app-updated"

/.kubectl set image deployments/${deploy_name} back-end=${updated_dockerpath}