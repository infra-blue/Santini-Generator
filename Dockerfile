FROM node:alpine

WORKDIR /santini-gen/

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build --prod

EXPOSE 80

ENTRYPOINT ["npm", "start"]
