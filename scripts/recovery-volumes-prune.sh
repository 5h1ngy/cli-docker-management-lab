#!/bin/sh

docker volume rm net-gateway-lab-volume-data
docker volume rm net-gateway-lab-volume-letsencrypt
docker volume rm srv-bookstack-volume
docker volume rm srv-bookstack-db-volume
docker volume rm srv-openproject-pgdata-volume
docker volume rm srv-openproject-assets-volume
docker volume rm srv-gitlab-volume-logs
docker volume rm srv-gitlab-volume-opt
docker volume rm srv-gitlab-volume-etc
docker volume rm env-git-vscode-volume
docker volume rm env-node-yarn-16.18.0-vscode-volume
docker volume rm env-ssh-volume
docker volume prune --force;