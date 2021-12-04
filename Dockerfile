FROM node:alpine

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json package-lock.json /app/src/

RUN npm install --production

COPY . .

EXPOSE 3001

CMD ["npm", "start"]