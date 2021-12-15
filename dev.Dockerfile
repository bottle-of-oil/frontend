FROM node:16-bullseye

WORKDIR /usr/src/app

ENV PATH /app/node_modules/.bin:$PATH

# copy over to take advantage of caching layers
COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . ./

CMD ["npm", "start"]