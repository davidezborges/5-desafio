# Set the base image.
FROM node:10 as build

# Create and define the node_modules's cache directory.
WORKDIR /app/frontend

COPY . .

# Install the application's dependencies into the node_modules's cache directory.
RUN npm install

RUN npm run build

FROM nginx:stable-alpine

COPY --from=0 /app/frontend/public /bin/www

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
