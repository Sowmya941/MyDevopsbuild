#!/bin/bash

# Push the Docker image to Docker Hub (Public for dev, Private for prod)

# Ensure you're logged in to Docker Hub
echo "Logging into Docker Hub..."
docker login

# For dev environment
echo "Pushing to dev repo..."
docker tag react-app:latest sowmyadevop/dev:latest
docker push sowmyadevop/dev:latest

# For prod environment (private)
echo "Pushing to prod repo..."
docker tag react-app:latest sowmyadevop/prod:latest
docker push sowmyadevop/prod:latest

echo "Deployment completed!"
