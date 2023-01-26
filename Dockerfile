FROM node:12.18.1-alpine

WORKDIR /usr/src/app
COPY package*.json ./
COPY package-lock.json .
RUN npm install
COPY ./videos ./videos
COPY . .
EXPOSE 8080
CMD npm start


# # Create app directory
# WORKDIR /usr/src/app
 
# COPY package.json .
# COPY package-lock.json .
 
# RUN npm install
 
# COPY . .
 
# EXPOSE 8080
 
# CMD [ "npm", "start" ]