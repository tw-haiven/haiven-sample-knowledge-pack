ARG REGISTRY_URL
ARG TAG=main

FROM ${REGISTRY_URL}haiven:${TAG}

COPY ./config_override/ /app/

COPY . /app/knowledge-pack

CMD ["python", "-u", "main.py"]
