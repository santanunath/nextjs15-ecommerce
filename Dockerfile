FROM node:20-alpine

WORKDIR /myapp

COPY package*.json ./

RUN npm install

COPY .  .

RUN npm run build  #creates an optimized PRODUCTION build
