docker compose --env-file ${PWD}/.env \
    --file ${PWD}/lab-environments.docker-compose.yaml \
    --file ${PWD}/lab-services.docker-compose.yaml \
    --file ${PWD}/lab-gateway.docker-compose.yaml \
    -p wk-management-lab down --remove-orphans