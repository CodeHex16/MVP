cd LLM-API/ && git pull && cd ..
cd Database-API/ && git pull && cd ..
cd Suppl-AI/ && git pull && cd ..
docker network create suppl-ai-shared-network
docker compose up -d --build
