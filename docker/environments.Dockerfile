#Ubuntu with GIT
FROM ubuntu:23.04 as env-git
#Update packages
RUN apt-get update; \
    apt-get upgrade -y;

#Install Git
RUN apt-get install -y git;


#Ubuntu with git + python v3 + nodeJS, default package manager: yarn
FROM env-git as env-python3-node-yarn-v4
#Deps install
RUN apt-get install -y curl xz-utils;
ARG NODE_VERSION
ARG DEV_PORT
EXPOSE ${DEV_PORT}
RUN cd /opt \
    && curl -LO https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz \
    && tar xJf node-v${NODE_VERSION}-linux-x64.tar.xz \
    && rm node-v${NODE_VERSION}-linux-x64.tar.xz
ENV PATH=/opt/node-v${NODE_VERSION}-linux-x64/bin:${PATH}
RUN apt-get install -y python3.11-venv
RUN corepack enable