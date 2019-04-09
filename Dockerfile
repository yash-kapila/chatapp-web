# Stage 0 - "build" based on Node.js
# Image based on Linux Alpine image - Default shell - sh
FROM node:8.12.0-alpine as build

WORKDIR /chat-app-web

COPY package*.json ./

ARG build_configuration=production
ARG NODE_ENV_ARG=development

ENV NODE_ENV $NODE_ENV_ARG

# Run below to have bash as default shell for container
# RUN apk update && apk add bash
# SHELL [ "/bin/bash", "-c" ]

RUN npm install

COPY . .

RUN npm run build -- --configuration $build_configuration

# Stage 1 - based on Nginx to have only the compiled app & ready for deployment
FROM nginx:1.15-alpine

COPY --from=build /chat-app-web/dist/chat-app-web /usr/share/nginx/html

# Copy the default nginx.conf provided by tiangolo/node-frontend
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
