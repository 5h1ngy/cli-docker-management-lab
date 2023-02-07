#!/bin/sh

{ # try
    rm -rfdv ${PWD}/../../data/wk-management-lab/dumps/volumes
    mkdir ${PWD}/../../data/wk-management-lab/dumps
    mkdir ${PWD}/../../data/wk-management-lab/dumps/volumes
} || { # catch
    echo "dumps: directory already exists"
    echo "/dumps/volumes: directory already exists"
}

docker run --tty --interactive --rm --name env-busybox-volumes \
    -v net-gateway-lab-volume-data:/dumps/volumes/net-gateway-lab-volume-data \
    -v net-gateway-lab-volume-letsencrypt:/dumps/volumes/net-gateway-lab-volume-letsencrypt \
    -v srv-bookstack-volume:/dumps/volumes/srv-bookstack-volume \
    -v srv-bookstack-db-volume:/dumps/volumes/srv-bookstack-db-volume \
    -v srv-openproject-pgdata-volume:/dumps/volumes/srv-openproject-pgdata-volume \
    -v srv-openproject-assets-volume:/dumps/volumes/srv-openproject-assets-volume \
    -v srv-gitlab-volume-logs:/dumps/volumes/srv-gitlab-volume-logs \
    -v srv-gitlab-volume-opt:/dumps/volumes/srv-gitlab-volume-opt \
    -v srv-gitlab-volume-etc:/dumps/volumes/srv-gitlab-volume-etc \
    -v env-git-vscode-volume:/dumps/volumes/env-git-vscode-volume \
    -v env-node-yarn-16.18.0-vscode-volume:/dumps/volumes/env-node-yarn-16.18.0-vscode-volume \
    -v env-ssh-volume:/dumps/volumes/env-ssh-volume \
    -v //${PWD}/../../data/wk-management-lab/dumps/volumes:/dumps/backup \
    busybox:1.35.0 bin/sh -c "\
    tar -cvf dumps/backup/net-gateway-lab-volume-data.tar dumps/volumes/net-gateway-lab-volume-data; \
    tar -cvf dumps/backup/net-gateway-lab-volume-letsencrypt.tar dumps/volumes/net-gateway-lab-volume-letsencrypt; \
    tar -cvf dumps/backup/srv-bookstack-volume.tar dumps/volumes/srv-bookstack-volume; \
    tar -cvf dumps/backup/srv-bookstack-db-volume.tar dumps/volumes/srv-bookstack-db-volume; \
    tar -cvf dumps/backup/srv-openproject-pgdata-volume.tar dumps/volumes/srv-openproject-pgdata-volume; \
    tar -cvf dumps/backup/srv-openproject-assets-volume.tar dumps/volumes/srv-openproject-assets-volume; \
    tar -cvf dumps/backup/srv-gitlab-volume-logs.tar dumps/volumes/srv-gitlab-volume-logs; \
    tar -cvf dumps/backup/srv-gitlab-volume-opt.tar dumps/volumes/srv-gitlab-volume-opt; \
    tar -cvf dumps/backup/srv-gitlab-volume-etc.tar dumps/volumes/srv-gitlab-volume-etc; \
    tar -cvf dumps/backup/env-git-vscode-volume.tar dumps/volumes/env-git-vscode-volume; \
    tar -cvf dumps/backup/env-node-yarn-16.18.0-vscode-volume.tar dumps/volumes/env-node-yarn-16.18.0-vscode-volume; \
    tar -cvf dumps/backup/env-ssh-volume.tar dumps/volumes/env-ssh-volume;"
