#!/bin/bash
echo "🔧 Installing Docker if missing..."
if ! command -v docker &> /dev/null; then
  sudo apt update && sudo apt install -y docker.io
fi

echo "🐳 Building Docker image..."
docker build -t my-site .

echo "🚀 Running container..."
docker run -d -p 5000:5000 my-site
