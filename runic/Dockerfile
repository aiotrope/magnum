# syntax = docker/dockerfile:1.2

FROM node:16.19-alpine

WORKDIR /app

ENV PORT=8000

ENV NODE_ENV production

COPY package.json yarn.lock ./

RUN rm -rf node_modules && yarn install --frozen-lockfile && yarn cache clean

COPY --chown=node:node . .

RUN yarn build

USER node

CMD ["yarn", "start"]