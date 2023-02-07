#!/bin/sh

docker volume create net-gateway-lab-volume-data
docker volume create net-gateway-lab-volume-letsencrypt

docker volume create srv-bookstack-volume
docker volume create srv-bookstack-db-volume
docker volume create srv-openproject-pgdata-volume
docker volume create srv-openproject-assets-volume
docker volume create srv-gitlab-volume-logs
docker volume create srv-gitlab-volume-opt
docker volume create srv-gitlab-volume-etc

docker volume create env-git-vscode-volume
docker volume create env-node-yarn-16.18.0-vscode-volume
docker volume create env-ssh-volume
