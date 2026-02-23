FROM node:18-alpine

WORKDIR /exit

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]