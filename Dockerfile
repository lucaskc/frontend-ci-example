# 1. Install all dependencies and run yarn build
FROM node:alpine

WORKDIR '/app'
COPY package.json ./
RUN yarn install
COPY ./ ./
RUN yarn build

# 2. Run: use nginx to serve build static files
FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html