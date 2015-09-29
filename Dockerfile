FROM node:0.10.40

ADD . /hubot
RUN npm install

WORKDIR /hubot
EXPOSE 1237:1237
CMD make init
