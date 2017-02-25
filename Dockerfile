FROM ubuntu:16.04

MAINTAINER beginor <beginor@qq.com>

RUN apt-get update && \
    apt-get install -y build-essential curl

RUN curl -sL https://deb.nodesource.com/setup_6.x > setup_6.x && \
    chmod +x setup_6.x && \
    ./setup_6.x && \
    rm setup_6.x && \
    apt-get install nodejs && \
    apt-get remove -y curl && \
    apt-get purge -y curl && \
    rm -rf /var/lib/apt/lists/*

ADD ./npmrc /usr/etc/npmrc

ADD ./package.json /project/package.json

EXPOSE 3000

WORKDIR /project

CMD ["npm", "start"]