# build stage
FROM node:14 as build-stage
LABEL maintainer="1948645200@qq.com"
WORKDIR /app
COPY . .
RUN npm install

RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]