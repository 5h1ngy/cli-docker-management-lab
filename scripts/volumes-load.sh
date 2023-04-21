#!/bin/sh
./scripts/recovery-volumes-create.sh

docker run --tty --interactive --rm --name env-busybox-volumes \
  -v srv-gitea-volume:/dumps/volumes/srv-gitea-volume \
  -v srv-gitea-timezone-volume:/dumps/volumes/srv-gitea-timezone-volume \
  -v srv-gitea-localtime-volume:/dumps/volumes/srv-gitea-localtime-volume \
  -v srv-gitea-db-volume:/dumps/volumes/srv-gitea-db-volume \
  -v env-vscode-volume:/dumps/volumes/env-vscode-volume \
  -v env-ssh-volume:/dumps/volumes/env-ssh-volume \
  -v //${PWD}/../../data/cli-docker-management-lab/dumps/volumes:/dumps/backup \
  busybox:1.35.0 bin/sh -c "\
  tar -xvf dumps/backup/srv-gitea-volume.tar; \
  tar -xvf dumps/backup/srv-gitea-timezone-volume.tar; \
  tar -xvf dumps/backup/srv-gitea-localtime-volume.tar; \
  tar -xvf dumps/backup/srv-gitea-db-volume.tar; \
  tar -xvf dumps/backup/env-vscode-volume.tar; \
  tar -xvf dumps/backup/env-ssh-volume.tar"
