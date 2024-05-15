#!/bin/bash

# Create common files
echo "Creating README.md and docker-compose.yml"
touch README.md
touch docker-compose.yml

# Create service directories and their internal structure
SERVICES=("content_generation" "media_retrieval" "video_editing" "upload_scheduler")

for SERVICE in "${SERVICES[@]}"; do
    echo "Setting up $SERVICE microservice"
    mkdir -p "services/$SERVICE/src"
    touch "services/$SERVICE/Dockerfile"
    touch "services/$SERVICE/app.py"
    touch "services/$SERVICE/requirements.txt"
    touch "services/$SERVICE/src/__init__.py"
    touch "services/$SERVICE/src/${SERVICE}.py"
done

# Create config directory
mkdir -p config
echo "Creating environment configuration files"
touch config/dev.env
touch config/prod.env
touch config/staging.env

echo "Directory structure and files have been created."
