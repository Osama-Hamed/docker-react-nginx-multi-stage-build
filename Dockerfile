FROM node:14.18.1-alpine as build-stage
WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
RUN yarn build
FROM nginx
EXPOSE 80
COPY --from=build-stage /app/build /usr/share/nginx/html