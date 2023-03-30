FROM node:18-alpine

WORKDIR /app

COPY . .

RUN yarn

RUN tsc

ENTRYPOINT ["node", "./dist/server.js"]
