FROM node:18-alpine

WORKDIR /app

COPY . .

RUN yarn

RUN ./node_modules/.bin/tsc

ENTRYPOINT ["node", "./build/index.js"]
