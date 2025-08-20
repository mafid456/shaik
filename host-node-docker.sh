#!/bin/bash
set -e

APP_NAME=node-docker-app
PORT=3000

echo "🔹 Building Docker image..."
docker build -t $APP_NAME .

echo "🔹 Stopping old container (if any)..."
docker stop $APP_NAME || true
docker rm $APP_NAME || true

echo "🔹 Running new container..."
docker run -d --name $APP_NAME -p $PORT:$PORT $APP_NAME

echo "✅ App is running at http://localhost:$PORT"
