FROM node:lts-buster

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./
COPY .build/release/ .

RUN npm i --only=production --verbose

EXPOSE 2368

CMD [ "npm", "run", "start" ]