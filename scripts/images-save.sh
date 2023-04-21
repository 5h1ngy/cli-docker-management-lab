#!/bin/sh
{ # try
    mkdir ${PWD}/../../data/cli-docker-management-lab/dumps
    mkdir ${PWD}/../../data/cli-docker-management-lab/dumps/images
} || { # catch
    echo "dumps: directory already exists"
    echo "images: directory already exists"
}

docker image save --output ${PWD}/../../data/cli-docker-management-lab/dumps/images/busybox_1.35.0.tar \
    busybox:1.35.0

docker image save --output ${PWD}/../../data/cli-docker-management-lab/dumps/images/excalidraw_excalidraw_sha_4bfc5bb.tar \
    excalidraw/excalidraw:sha-4bfc5bb

docker image save --output ${PWD}/../../data/cli-docker-management-lab/dumps/images/mysql_8.tar \
    mysql:8

docker image save --output ${PWD}/../../data/cli-docker-management-lab/dumps/images/gitea_gitea_1.21.3.tar \
    gitea/gitea:1.21.3

docker image save --output ${PWD}/../../data/cli-docker-management-lab/dumps/images/jc21_nginx-proxy-manager_latest.tar \
    jc21/nginx-proxy-manager:latest

docker image save --output ${PWD}/../../data/cli-docker-management-lab/dumps/images/env-python3-node-yarn_20.10.0.tar \
    env-python3-node-yarn:20.10.0
