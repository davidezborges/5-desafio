# Set the base image.
FROM node:10

# Create and define the node_modules's cache directory.
WORKDIR /app/frontend

COPY . .

# Install the application's dependencies into the node_modules's cache directory.
RUN npm install

CMD ["exec", "npm", "start", "--port", "8000"]
