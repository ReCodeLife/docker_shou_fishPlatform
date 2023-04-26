FROM node:14.21-buster

WORKDIR /home/docker/

COPY package.json .

RUN npm i -g node-sass@4.14.1 & npm i -g 


