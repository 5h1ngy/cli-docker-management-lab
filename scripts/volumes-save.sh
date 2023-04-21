#!/bin/sh

{ # try
    rm -rfdv ${PWD}/../../data/cli-docker-management-lab/dumps/volumes
    mkdir ${PWD}/../../data/cli-docker-management-lab/dumps
    mkdir ${PWD}/../../data/cli-docker-management-lab/dumps/volumes
} || { # catch
    echo "dumps: directory already exists"
    echo "/dumps/volumes: directory already exists"
}

docker run --tty --interactive --rm --name env-busybox-volumes \
    -v srv-gitea-volume:/dumps/volumes/srv-gitea-volume \
    -v srv-gitea-timezone-volume:/dumps/volumes/srv-gitea-timezone-volume \
    -v srv-gitea-localtime-volume:/dumps/volumes/srv-gitea-localtime-volume \
    -v srv-gitea-db-volume:/dumps/volumes/srv-gitea-db-volume \
    -v env-vscode-volume:/dumps/volumes/env-vscode-volume \
    -v env-ssh-volume:/dumps/volumes/env-ssh-volume \
    -v //${PWD}/../../data/cli-docker-management-lab/dumps/volumes:/dumps/backup \
    busybox:1.35.0 bin/sh -c "\
    tar -cvf dumps/backup/srv-gitea-volume.tar dumps/volumes/srv-gitea-volume; \
    tar -cvf dumps/backup/srv-gitea-timezone-volume.tar dumps/volumes/srv-gitea-timezone-volume; \
    tar -cvf dumps/backup/srv-gitea-localtime-volume.tar dumps/volumes/srv-gitea-localtime-volume; \
    tar -cvf dumps/backup/srv-gitea-db-volume.tar dumps/volumes/srv-gitea-db-volume; \
    tar -cvf dumps/backup/env-vscode-volume.tar dumps/volumes/env-vscode-volume; \
    tar -cvf dumps/backup/env-ssh-volume.tar dumps/volumes/env-ssh-volume;"
