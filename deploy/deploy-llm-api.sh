#!/bin/bash

# Server details (modify if deploying remotely)
SERVER_USER="ubuntu"
SERVER_IP="suppl-ai.whyle.cc"
REMOTE_DIR="/var/www/mvp"

# SSH into the server and execute deployment commands
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -T "${SERVER_USER}@${SERVER_IP}" <<EOF

echo "====[1] Navigating to API directory ===="
cd ${REMOTE_DIR} || exit 1

echo "====[2] Pulling the latest code ===="
git pull origin main || exit 1
git pull --recurse-submodules

echo "====[3] Navigating to API directory ===="
cd llm-api || exit 1

echo "====[4] Stopping and removing old containers ===="
docker-compose down || exit 1

# echo "====[5] Cleaning up old Docker images ===="
# docker system prune -af --filter "label!=suppl-ai-shared-network"

echo "====[6] Rebuilding and starting the API container ===="
docker-compose up --build -d || exit 1

echo "====[7] Checking container status ===="
docker-compose ps

EOF

echo "✅ Deployment complete!"
