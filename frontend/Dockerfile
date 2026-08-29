# Собираем статику
FROM node:14-alpine as builder

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Кладём статику в nginx
FROM nginx:1.21-alpine

COPY --from=builder /usr/src/app/dist/frontend /usr/share/nginx/html

EXPOSE 80
