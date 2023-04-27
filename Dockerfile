FROM node:14.21-buster

RUN  chown node:node /usr/local/lib/node_modules

USER node

WORKDIR /home/docker/

COPY package.json .

RUN npm i -g node-sass@4.14.1 & npm i -g 


