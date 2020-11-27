FROM node:14.15.1

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g ionic

COPY . .

RUN npm run-script build

ENTRYPOINT ["ionic"]

CMD ["serve", "8100"]