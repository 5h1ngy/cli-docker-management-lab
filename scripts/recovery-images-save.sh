#!/bin/sh
{ # try
    mkdir ${PWD}/../../data/wk-management-lab/dumps
    mkdir ${PWD}/../../data/wk-management-lab/dumps/images
} || { # catch
    echo "dumps: directory already exists"
    echo "images: directory already exists"
}

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/busybox_1.35.0.tar \
    busybox:1.35.0

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/jc21_nginx_proxy_manager_github_pr_1844.tar \
    jc21/nginx-proxy-manager:github-pr-1844

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/excalidraw_excalidraw_sha_4bfc5bb.tar \
    excalidraw/excalidraw:sha-4bfc5bb

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/lscr.io_linuxserver_bookstack_22.10.2.tar \
    lscr.io/linuxserver/bookstack:22.10.2

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/lscr.io_linuxserver_mariadb_10.6.10.tar \
    lscr.io/linuxserver/mariadb:10.6.10

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/openproject_community_12.tar \
    openproject/community:12

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/gitlab_gitlab_ce_15.4.2_ce.0.tar \
    gitlab/gitlab-ce:15.4.2-ce.0

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/env_git_0.0.1.tar \
    env-git:0.0.1

docker image save --output ${PWD}/../../data/wk-management-lab/dumps/images/env_node_yarn_16.18.0.tar \
    env-node-yarn:16.18.0