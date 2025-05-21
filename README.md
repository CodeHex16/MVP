<p align=center>
<img src="https://github.com/CodeHex16/documentazione/blob/main/template/images/logo_extended_b.webp" width=400 alt="CodeHex16 Logo">
</p>

# MVP 
Minimum Viable Product per il capitolato C7 di Ingegneria del Software (aa. 2024/2025) dell'Università di Padova.


| Project       | Coverage Status                                                                                     |
|---------------|-----------------------------------------------------------------------------------------------------|
| Suppl-AI      | [![Coverage Status](https://coveralls.io/repos/github/CodeHex16/Suppl-AI/badge.svg)](https://coveralls.io/github/CodeHex16/Suppl-AI)       |
| Database-API  | [![Coverage Status](https://coveralls.io/repos/github/CodeHex16/Database-API/badge.svg)](https://coveralls.io/github/CodeHex16/Database-API) |
| LLM-API       | [![Coverage Status](https://coveralls.io/repos/github/CodeHex16/LLM-API/badge.svg)](https://coveralls.io/github/CodeHex16/LLM-API)         |



## How to clone the repo with submodules
```bash
git clone --recurse-submodules https://github.com/CodeHex16/MVP.git
```


## How to run the project
First you need to ```cd``` into the project folder in order to create your ```.env``` file, so:
- ```cd MVP```
- ```cp .env.example .env```

Then you need to create the docker shared network:
```bash
docker network create suppl-ai-shared-network
```
And finally you can build and run the project:
```bash
docker compose up -d --build
```
## How to stop the project
```bash
docker compose down
```

## How to update project with the submodules
```bash
git pull --recurse-submodules

```
