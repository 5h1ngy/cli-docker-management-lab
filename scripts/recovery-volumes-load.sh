#!/bin/sh
${PWD}/scripts/recovery-volumes-create.sh

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
  tar -xvf dumps/backup/net-gateway-lab-volume-data.tar; \
  tar -xvf dumps/backup/net-gateway-lab-volume-letsencrypt.tar; \
  tar -xvf dumps/backup/srv-bookstack-volume.tar; \
  tar -xvf dumps/backup/srv-bookstack-db-volume.tar; \
  tar -xvf dumps/backup/srv-openproject-pgdata-volume.tar; \
  tar -xvf dumps/backup/srv-openproject-assets-volume.tar; \
  tar -xvf dumps/backup/srv-gitlab-volume-logs.tar; \
  tar -xvf dumps/backup/srv-gitlab-volume-opt.tar; \
  tar -xvf dumps/backup/srv-gitlab-volume-etc.tar; \
  tar -xvf dumps/backup/env-git-vscode-volume.tar; \
  tar -xvf dumps/backup/env-node-yarn-16.18.0-vscode-volume.tar; \
  tar -xvf dumps/backup/env-ssh-volume.tar"
