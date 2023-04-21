#!/bin/sh

docker compose --env-file ./docker/.env \
    --file ./docker/compose/lab-environments.yaml \
    --file ./docker/compose/lab-services.yaml \
    --file ./docker/compose/lab-gateway.yaml \
    -p wk-management-lab down --remove-orphans