FROM node:12.16.0-alpine

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY package*.json ./
RUN npm install
COPY . . 
