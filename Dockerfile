FROM node:14.21-buster

COPY package.json .

RUN mkdir ~/.npm-global & \
 npm config set prefix '~/.npm-global' & \
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile & \
source ~/.profile & \
npm i -g node-sass@4.14.1 & npm i -g 


