#!/bin/bash

echo "Create docker environment..."
docker-compose up -d --remove-orphans --build

echo "Check if packages are installed"
docker-compose exec test-service which git
docker-compose exec test-service which ip
docker-compose exec test-service which patch

echo "Destroy docker environment..."
docker-compose down --remove-orphans
