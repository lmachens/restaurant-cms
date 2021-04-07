FROM node:lts-buster-slim

WORKDIR /app

COPY . .

RUN npm ci

ENV NODE_ENV production

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]