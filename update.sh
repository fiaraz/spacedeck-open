#!/bin/bash
echo "Pulling latest changes from git..."
git pull origin feature/pdf-multipage-grid

echo "Rebuilding Spacedeck Docker image..."
docker compose -f docker-compose.prod.yml build

echo "Restarting Spacedeck..."
docker compose -f docker-compose.prod.yml up -d

echo "Update complete! Spacedeck is running."
