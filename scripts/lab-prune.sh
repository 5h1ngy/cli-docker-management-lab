#!/bin/sh
docker image prune --all --force

docker volume rm srv-gitea-volume
docker volume rm srv-gitea-timezone-volume
docker volume rm srv-gitea-localtime-volume
docker volume rm srv-gitea-db-volume

docker volume rm env-vscode-volume
docker volume rm env-ssh-volume