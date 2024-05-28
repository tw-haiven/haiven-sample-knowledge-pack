
echo "This is an example script to run Haiven with this sample knowledge pack and Ollama"
echo "For more information, and maybe even more updated documentation, please check the main Haiven repository at https://github.com/tw-haiven/haiven"

# ollama pull llama2
# ollama pull llava:7b

docker pull ghcr.io/tw-haiven/haiven-community-knowledge-pack:main
docker run \
        -v .:/app/teams \
        -e TEAM_CONTENT_PATH=/app/teams \
        -e AUTH_SWITCHED_OFF=true \
        -e ENABLED_PROVIDERS=ollama \
        -e ENABLED_EMBEDDINGS_MODEL=ollama \
        -e ENABLED_VISION_MODEL=llava:7b \
        -e OLLAMA_BASE_URL=http://host.docker.internal:11434 \
        -p 8080:8080 \
        ghcr.io/tw-haiven/haiven-community-knowledge-pack:main
