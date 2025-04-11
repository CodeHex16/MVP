git clone https://github.com/CodeHex16/Database-API.git
git clone https://github.com/CodeHex16/LLM-API.git
git clone https://github.com/CodeHex16/Suppl-AI.git
docker network create suppl-ai-shared-network
# magari mettere i file env nella root tipo llm.env e una volta clonate le repo spostarli e rinominarli
docker compose up -d --build