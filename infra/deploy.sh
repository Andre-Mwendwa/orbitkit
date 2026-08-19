# filename: infra/deploy.sh
#!/usr/bin/env bash
set -euo pipefail

IMAGE_TAG="${1:?Usage: deploy.sh <image-tag>}"

echo "Ndio napull image ${IMAGE_TAG}..."
docker pull "ghcr.io/andre-mwendwa/orbitkit:${IMAGE_TAG}"

echo "Stopping old container (if any)..."
docker stop orbitkit || true
docker rm orbitkit || true

echo "Starting new container..."
docker run -d --name orbitkit -p 8080:8080 "ghcr.io/andre-mwendwa/orbitkit:${IMAGE_TAG}"

echo "Waiting for health check..."
sleep 3
curl -f http://localhost:8080/health || { echo "Health check failed — rollback required"; exit 1; }