#!/bin/bash

# Build the Docker image
echo "Building Docker image for React application..."

# Build the Docker image
docker build -t react-app .

# Run the Docker container (optional to test locally)
docker run -d -p 80:80 react-app

echo "Docker image built successfully!"
