FROM node:12.18.1-alpine

WORKDIR /usr/src/app
COPY package*.json ./
COPY package-lock.json .
RUN npm install
COPY . .
ENV PORT=80
CMD npm start
