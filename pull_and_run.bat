cd LLM-API/ && git pull && git checkout main && cd ..
cd Database-API/ && git pull && git checkout main && cd ..
cd Suppl-AI/ && git pull && git checkout main && cd ..
docker network create suppl-ai-shared-network
docker compose up -d --build
