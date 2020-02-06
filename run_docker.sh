#!/usr/bin/env bash
#
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=aprediction .
# Step 2:
# List docker images
docker image ls
# Run flask app
docker run -p 8000:80 aprediction
