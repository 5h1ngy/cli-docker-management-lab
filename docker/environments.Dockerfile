#Ubuntu with GIT
FROM ubuntu:23.04 as env-git
#Update packages
RUN apt-get update; \
    apt-get upgrade -y;
#Install Git
RUN apt-get install -y git;



#Ubuntu with git + nodeJS, default package manager: yarn
FROM env-git as env-node-yarn
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
RUN npm i -g yarn



#Ubuntu with git + nodeJS, default package manager: yarn
FROM env-git as env-node-yarn-v4
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
# RUN npm i -g yarn
RUN corepack enable



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
RUN apt-get install -y python3-pip
RUN corepack enable



#Ubuntu with git + nodeJS, default package manager: npm
FROM env-git as env-node-npm
#Deps install
RUN apt-get install -y curl xz-utils;
ARG NODE_VERSION
RUN cd /opt \
    && curl -LO https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz \
    && tar xJf node-v${NODE_VERSION}-linux-x64.tar.xz \
    && rm node-v${NODE_VERSION}-linux-x64.tar.xz
ENV PATH=/opt/node-v${NODE_VERSION}-linux-x64/bin:${PATH}



#Ubuntu with git + nodeJS and Ruby
FROM env-node-npm as env-node-npm-ruby
#Deps install
RUN apt-get install -y ruby-full