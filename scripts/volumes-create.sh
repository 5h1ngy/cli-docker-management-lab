#!/bin/sh

docker volume create srv-gitea-volume
docker volume create srv-gitea-timezone-volume
docker volume create srv-gitea-localtime-volume
docker volume create srv-gitea-db-volume

docker volume create env-vscode-volume
docker volume create env-ssh-volume
