FROM node:22 as builder

WORKDIR /app
COPY . .

RUN npm ci
RUN npm run build

FROM nginxinc/nginx-unprivileged:alpine3.21-perl

COPY --from=builder /app/build /usr/share/nginx/html
