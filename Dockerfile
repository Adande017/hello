FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 3000

ENV NODE_ENV=production
ENV PORT=3000
ENV DB_PATH=/usr/src/app/data/payment_demo.db

VOLUME ["/usr/src/app/data"]

CMD ["npm", "start"]
