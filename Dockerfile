# pocket-bot
# VERSION   0.0.1
MAINTAINER Gianluca Arbezzano <gianarb92@gmail.com>

FROM node:0.10.40

ADD . /hubot
RUN npm install

WORKDIR /hubot
EXPOSE 1237:1237
CMD make init
