# Use the official Node.js image as the base image
FROM node:21-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Specify the command to run your app
CMD ["npm", "start"]
