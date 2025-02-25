FROM node:16-alpine
RUN apk add --no-cache sqlite
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "src/index.js"]
