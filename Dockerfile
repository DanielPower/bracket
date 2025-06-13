FROM node:lts-alpine

WORKDIR /app
COPY . .

RUN npm ci
RUN npm build
RUN cp ./build/* /usr/share/nginx/html
