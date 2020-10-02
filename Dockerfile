FROM node:12.16.0-alpine

COPY package*.json ./
RUN npm install
COPY . . 
