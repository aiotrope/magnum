# syntax=docker/dockerfile:1

FROM node:16.19-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

ENV PORT=8000

ENV NODE_ENV production

COPY package.json yarn.lock ./

RUN rm -rf node_modules && yarn install --frozen-lockfile && yarn cache clean

COPY --chown=node:node . .

RUN yarn build

USER node

EXPOSE 8000

CMD ["yarn", "start"]