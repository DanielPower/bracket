FROM node:22 as builder

WORKDIR /app
COPY . .

RUN npm ci
RUN npm run build

FROM nginx:stable

COPY --from=builder /app/build /usr/share/nginx/html
