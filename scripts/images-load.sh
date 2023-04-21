#!/bin/sh
docker image load --input ${PWD}/../../data/wk-management-lab/dumps/images/busybox_1.35.0.tar

docker image load --input ${PWD}/../../data/cli-docker-management-lab/dumps/images/excalidraw_excalidraw_sha_4bfc5bb.tar
docker image load --input ${PWD}/../../data/cli-docker-management-lab/dumps/images/mysql_8.tar
docker image load --input ${PWD}/../../data/cli-docker-management-lab/dumps/images/gitea_gitea_1.21.3.tar

docker image load --input ${PWD}/../../data/cli-docker-management-lab/dumps/images/jc21_nginx-proxy-manager_latest.tar
docker image load --input ${PWD}/../../data/cli-docker-management-lab/dumps/images/env-python3-node-yarn_20.10.0.tar
