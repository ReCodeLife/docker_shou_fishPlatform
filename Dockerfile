FROM node:14.21-buster
SHELL ["/bin/bash", "-c"]

COPY package.json .

RUN mkdir ~/.npm-global & \
 npm config set prefix '~/.npm-global' & \
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile & \
source ~/.profile & \
npm i -g node-sass@4.14.1 & npm i -g 


