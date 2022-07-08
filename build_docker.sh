#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -tag=myimage .

# Step 2: 
# List docker images
docker image list

# Step 3: 
# Run flask app
docker run --name=myContainer --env-file=.env --port=8000:80 myContainer

# Step 4:
# Set docker path
dockerpath="kcemenike/myContainer:v1.0.0"

# Step 2:  
# Authenticate & tag
docker login
docker tag myContainer ${dockerpath}
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}